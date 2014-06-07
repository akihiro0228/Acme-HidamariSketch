use strict;
use warnings;
use Test::More;

use Acme::HidamariSketch;


subtest 'apartment' => sub {
    my $hidamari  = Acme::HidamariSketch->new;
    my $apartment = $hidamari->apartment;

    ok $hidamari;
    ok $apartment;

    my $yuno   = Acme::HidamariSketch::Yuno->new;
    my $miyako = Acme::HidamariSketch::Miyako->new;
    my $hiro   = Acme::HidamariSketch::Hiro->new;
    my $sae    = Acme::HidamariSketch::Sae->new;
    my $nori   = Acme::HidamariSketch::Nori->new;
    my $nazuna = Acme::HidamariSketch::Nazuna->new;

    is_deeply $apartment->knock(201), $yuno,   'ゆのがお出迎え'  ;
    is_deeply $apartment->knock(202), $miyako, '宮子がお出迎え'  ;
    is_deeply $apartment->knock(203), $nazuna, 'なずながお出迎え';
    is_deeply $apartment->knock(101), $hiro,   'ヒロがお出迎え'  ;
    is_deeply $apartment->knock(102), $sae,    '沙英がお出迎え'  ;
    is_deeply $apartment->knock(103), $nori,   '乃莉がお出迎え'  ;

    is $apartment->knock,      1;
    is $apartment->knock(104), 1;
};


done_testing;

