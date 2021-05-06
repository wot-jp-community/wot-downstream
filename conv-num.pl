#!/usr//bin/perl

while (<>) {
  chomp;
  s/1つ/一つ/g;
  s/2つ/二つ/g;
  s/3つ/三つ/g;
  s/4つ/四つ/g;
  s/5つ/五つ/g;
  s/6つ/六つ/g;
  s/7つ/七つ/g;
  s/8つ/八つ/g;
  s/9つ/九つ/g;
  print "$_\n";
}