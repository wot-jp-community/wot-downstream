#!/usr/bin/perl

my $is_body = 0;
my $link = "";
my $text = "";

while (<>) {
  chomp;
  if (/<body /) {
     $is_body = 1;
  }
  if ($is_body) {
    if (/<a.+href="(.+?)">(.+?)<\/a>/) {
      $link = $1;
      $text = $2;
      #print "### $link : $text\n";

      if ((${link} ne ${text}) && ($link !~ /^#/)) {
        s/>${text}</>${text} \(${link}\) </;
      }
    }
  }
  print "$_\n";
}
