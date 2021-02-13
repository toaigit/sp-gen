#!/usr/bin/perl
#
#  PROGRAM:  sp-gen.pl
#
#  PURPOSE:  A simple Perl to generate sp-key.pem and sp-cert.pem for SAML
#  VERSION:  1.0
#  Created by toai vo toaivo@stanford.edu
#
use strict;
use warnings;
use CGI qw(:standard);

my $query = new CGI;
my $SITEURL = $query->param('SITENAME');

my $CLIENTIP = $ENV{'REMOTE_ADDR'};
my $CGIDIR = '/home/stanford/public_html/cgi-bin';

print "Content-type: text/html\n\n";
print "<pre>\n\n";
my @cmd   = ("$CGIDIR/sp-gen.sh", $SITEURL );
system (@cmd);
print "</pre>\n\n";
