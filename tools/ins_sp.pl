#!/usr/bin/perl

my $is_body = 0;

while (<>) {
  chomp;

  if (/^<body/) {
    $is_body = 1;

  } elsif ($is_body) {

    # main conversion
    ## palens
    s/>\(/> \(/g;
    s/(.+?)\(/$1 \(/g;
    s/\)\)/\)\) /g;
    s/\)(?!<)/\) /g;

    ## brackets
    s/>\[/> \[/g;
    s/(.+?)\[/$1 \[/g;
    s/\]</\] </g;
    s/\](.+?)/\] $1/g;

    ## URL
    s/<code>(https:.+?)<\/code>/ <code>$1<\/code> /g;
    s/> <code>(https:.+?)<\/code> </><code>$1<\/code></g;

    # exceptions
    s/url=\(0057\) https/url=\(0057\)https/;
    s/\) ;/\);/;
    s/\) ,/\),/;
    s/\) "/\)"/;
    s/\) \./\)\./;
    s|\)(\s+)</dd>|\)</dd>|;
    s|\)(\s+)</dt>|\)</dt>|;
    s|(\s+)\(s\)(\s+)|\(s\)|;

    s|<dd>(\s+)\(|<dd>\(|;
    s|\((\s+)\[|\(\[|;
    s|\) 」|\)」|g;
    s|\) 、|\)、|g;
    s|、 \(|、(|g;
    s|\) 。|\)。|g;

    s/([(]D[)])\s+(TLS)/$1$2/g; # "(D)TLS"
    s/(HTTP|CoAP)\s+([(]S[)])/$1$2/g; # "HTTP(S)", "CoAP(S)"
    s/(Essential Claim)\s+([(]s[)])/$1$2/g; # "Essential Claim(s)"
    s/\s*([(]再[)])\s+(定義)/$1$2/g; # "(再)定義"

    # multiple spaces to be shrinked
    s/(\S+)\s+/$1 /g;
  }

  print "$_\n";
}
