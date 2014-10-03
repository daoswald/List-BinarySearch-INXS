#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 2;

BEGIN {
    use_ok( 'List::BinarySearch::INXS', qw( :all ) )
        || BAIL_OUT();
}

diag( "Testing List::BinarySearch::INXS " .
      "$List::BinarySearch::INXS::VERSION, Perl $], $^X"
);


can_ok(
    'List::BinarySearch::INXS',
    qw( binsearch binsearch_pos )
);

done_testing();
