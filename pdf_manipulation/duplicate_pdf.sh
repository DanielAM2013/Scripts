#!/bin/bash

mkdir -p tmp
cp "$1" tmp
cd tmp

pdftk "$1" burst

mv "$1" ..;

for i in *.pdf
do
	echo "$i";
	pdfcrop --margin "0 0 -400 0" --clip "$i" "r$i" > /dev/null;
	pdfcrop --margin "-400 0 0 0" --clip "$i" "l$i" > /dev/null;
	pdftk "r$i" "l$i" output "d$i"
	rm "r$i" "l$i";
done

pdftk d*.pdf output ../"d$1";

cd ..
rm -rf tmp
