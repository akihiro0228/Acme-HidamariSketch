use strict;
use warnings;
use Test::More;

use Acme::HidamariSketch;


subtest 'new' => sub {
    my $hidamari = Acme::HidamariSketch->new;
    ok $hidamari;
};


done_testing;

