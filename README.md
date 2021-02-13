# sp-gen
Simple perl cgi script to generate sp-key.pem, sp-cert.pem and metadata.xml to use with SAML

*  You need to put these two scripts in your cgi-bin..
*  Enter https://yoursite/cgi-bin/sp-gen.pl?SITENAME=yoursite.
*  For example https://janedoe.net/cgi-bin/sp-gen.pl?SITENAME=mywebsite.janedone.net
*  If you dont have a website, you can run the script ./sp-gen.sh SITENAME manually to generate these files.
*  NOTE: you may need to modify the sp-metadata.templ to match with your company iDP.
