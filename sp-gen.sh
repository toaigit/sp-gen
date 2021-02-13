#!/bin/bash
#  Use this script to generate sp-key.pem, sp-cert.pem and sp-metadata.xml manually
#
if [ $# -ne 1 ] ; then
   echo "Usage: $0 sitename"
   exit 1
fi

export SITENAME=$1

#  generate the sp-cert.pem and sp-key.pem files
 ./keygen.sh -h $SITENAME

#  generate the metadata.xml file
./genmeta.sh 
cat sp-metadata.templX | sed "s/SITENAME/$SITENAME/g" > sp-metadata.xml

#  display the sp-cert.pem, sp-key.pem and metadata.xml file
 cat sp-cert.pem
 echo ""
 cat sp-key.pem
 echo ""
 echo "Your sp-metadata.xml file"
 echo ""
 cat sp-metadata.xml

#  clean up temporary file
rm sp-metadata.templX sp-cert.pem sp-key.pem
