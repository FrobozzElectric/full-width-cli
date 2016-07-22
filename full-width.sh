#!/bin/bash

if [ ! -z "$1" ];then
    in=$1
else
    in=$(cat)
fi

if [ -f "$in" ]; then
    in=$(cat $1)
fi

sed 'y/abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\!@#\$%\^&\*(){}[]\\|\,.\/<>\?/ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ１２３４５６７８９０！＠＃＄％＾＆＊（）｛｝[]＼|,.／＜＞？/' <(echo $in)
