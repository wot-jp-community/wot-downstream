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

# remove extra <font> tags
for my $node ($h->findnodes('//font')){
    $node->replace_with_content();
}
# remove extra <span> tags with 'style' attribute
for my $node ($h->findnodes('//span')){
    $node->replace_with_content for $node->look_down(style => "background: #ffffff");
}
# remove extra <span> tags with 'lang' attribute
for my $node ($h->findnodes('//span')){
    $node->replace_with_content for $node->look_down(lang => "ja-JP");
}
# remove extra 'align', 'class' and 'style' attributes from <p> tags
for my $node ($h->findnodes('//p')){
    $node->attr('class' => undef) for $node->look_down(class => "western");
    $node->attr('align' => undef) for $node->look_down(align => "justify");
    $node->attr('style' => undef) for $node->look_down(style => "margin-left: 0.09in; margin-right: 0.07in");
}

$html = $h->as_HTML("<>&", "  ",{});
$h->delete;

### Write fixed HTML
open(OUT,">$filename");
print OUT $html;
close(OUT);
