#!/usr/bin/perl

use strict;
use utf8;
use HTML::TreeBuilder;
use HTML::TreeBuilder::XPath;
use HTML::Selector::XPath qw/selector_to_xpath/;
use Encode::Guess;
use File::Copy;

### Read HTML
my $filename = $ARGV[0];
open( IN, "<$filename" );
local $/ = undef;
my $html = <IN>;
close(IN);

### Conversion
my $h = HTML::TreeBuilder->new;
$h->parse($html);
$h->eof;


$html = $h->as_HTML("<>&", "  ",{});
$h->delete;

### Write fixed HTML
open(OUT,">$filename");
print OUT $html;
close(OUT);
