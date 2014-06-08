package Acme::HidamariSketch::Hiro;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.02';


sub info {
    return (
        name_ja     => 'ヒロ',
        name_en     => 'hiro',
        nickname    => 'ヒロ',
        birthday    => '6/15',
        voice_by    => '後藤 邑子',
        room_number => {before => 203, first => 101, second => 101, third => undef},
        sign        => '双子座',
        color       => 'ピンク',
        course      => '美術科',
    );
}

1;
