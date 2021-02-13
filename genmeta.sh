#!/bin/bash
FN=sp-metadata.templ
sed -n '/SP-CERT/q;p' $FN > b.txt
sed '0,/SP-CERT/d' $FN > a.txt
grep -v "CERTIFICATE" sp-cert.pem > sp-cert.txt
cat b.txt sp-cert.txt a.txt > sp-metadata.templX
rm a.txt b.txt sp-cert.txt  
