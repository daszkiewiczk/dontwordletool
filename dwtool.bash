#!/usr/bin/bash
awk -f dwtool.awk | sort -nk 2 | awk '!min {min = $2} $2 == min {print}' > words.tmp
for letter in q j z x v k w y f b g h m p d u c l s n t o i r a e; do
    if [[ $(grep $letter words.tmp) ]]; then
        echo $letter
        grep $letter words.tmp
    fi
    grep -v $letter words.tmp > words2.tmp
    mv words2.tmp words.tmp
done
rm words.tmp

