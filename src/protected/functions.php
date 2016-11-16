<?php

function p($array)
{
	echo '<pre>';
	print_r($array);
	echo '</pre>';
}

// function truncate($text, $length = 100) {
//     return mb_substr($text, 0, $length, 'utf-8'); 
// }
function truncate($text, $length = 100, $ending = '...', $exact = true, $considerHtml = true) {
    if (is_array($ending)) {
        extract($ending);
    }
    if ($considerHtml) {
        if (mb_strlen(preg_replace('/<.*?>/', '', $text)) <= $length) {
            return $text;
        }
        $totalLength = mb_strlen($ending);
        $openTags = array();
        $truncate = '';
        preg_match_all('/(<\/?([\w+]+)[^>]*>)?([^<>]*)/', $text, $tags, PREG_SET_ORDER);
        foreach ($tags as $tag) {
            if (!preg_match('/img|br|input|hr|area|base|basefont|col|frame|isindex|link|meta|param/s', $tag[2])) {
                if (preg_match('/<[\w]+[^>]*>/s', $tag[0])) {
                    array_unshift($openTags, $tag[2]);
                } else if (preg_match('/<\/([\w]+)[^>]*>/s', $tag[0], $closeTag)) {
                    $pos = array_search($closeTag[1], $openTags);
                    if ($pos !== false) {
                        array_splice($openTags, $pos, 1);
                    }
                }
            }
            $truncate .= $tag[1];

            $contentLength = mb_strlen(preg_replace('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', ' ', $tag[3]));
            if ($contentLength + $totalLength > $length) {
                $left = $length - $totalLength;
                $entitiesLength = 0;
                if (preg_match_all('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', $tag[3], $entities, PREG_OFFSET_CAPTURE)) {
                    foreach ($entities[0] as $entity) {
                        if ($entity[1] + 1 - $entitiesLength <= $left) {
                            $left--;
                            $entitiesLength += mb_strlen($entity[0]);
                        } else {
                            break;
                        }
                    }
                }

                $truncate .= mb_substr($tag[3], 0 , $left + $entitiesLength,'utf-8');
                break;
            } else {
                $truncate .= $tag[3];
                $totalLength += $contentLength;
            }
            if ($totalLength >= $length) {
                break;
            }
        }

    } else {
        if (mb_strlen($text) <= $length) {
            return $text;
        } else {
            $truncate = mb_substr($text, 0, $length - strlen($ending));
        }
    }
    if (!$exact) {
        $spacepos = mb_strrpos($truncate, ' ');
        if (isset($spacepos)) {
            if ($considerHtml) {
                $bits = mb_substr($truncate, $spacepos);
                preg_match_all('/<\/([a-z]+)>/', $bits, $droppedTags, PREG_SET_ORDER);
                if (!empty($droppedTags)) {
                    foreach ($droppedTags as $closingTag) {
                        if (!in_array($closingTag[1], $openTags)) {
                            array_unshift($openTags, $closingTag[1]);
                        }
                    }
                }
            }
            $truncate = mb_substr($truncate, 0, $spacepos);
        }
    }

    $truncate .= $ending;

    if ($considerHtml) {
        foreach ($openTags as $tag) {
            $truncate .= '</'.$tag.'>';
        }
    }

    return $truncate;
}

function getInfoByContent($content)
{
    return trim(strip_tags(mb_substr($content, 0, 490, 'utf-8')));
}

function getPicByContent($content){
    preg_match_all("/<img.*\>/isU",$content,$ereg);//正则表达式把图片的整个都获取出来了 
    if(count($ereg[0]) == 0)
    {
        return "";
    }
    $img=$ereg[0][0];//图片 
    $p="#src=('|\")(.*)('|\")#isU";//正则表达式
    preg_match_all ($p, $img, $img1); 
    $img_path =$img1[2][0];//获取第一张图片路径  
    return $img_path; 
}

function getArticleTypeText($type)
{
    return $type == '0' ? '原创' : '转载';
}

function syntaxHighlighter($content) {
    $pattern = '/<pre.*data-lang="(.*)">/i';
    $replacement = '<pre class="brush: ${1};">';
    return preg_replace($pattern, $replacement, $content);
}