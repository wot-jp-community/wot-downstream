#!/usr/bin/perl

while (<>) {
  chomp;
  s/対話アファーダンス/相互作用のアファーダンス/g;
  s/対話/相互作用/g;
  print "$_\n";
}
