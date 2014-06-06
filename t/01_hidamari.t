use strict;
use warnings;
use Test::More;

use Acme::HidamariSketch;

subtest 'new' => sub {
    my $hidamari = Acme::HidamariSketch->new;
    ok $hidamari;
};

subtest 'characters' => sub {
    my $hidamari = Acme::HidamariSketch->new;
    ok $hidamari;
    ok $hidamari->characters;
};

done_testing;

