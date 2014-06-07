package Acme::HidamariSketch::Hiro;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => 'ヒロ',
        name_en     => 'hiro',
        nickname    => 'ヒロ',
        birthday    => '6/15',
        voice_by    => '後藤 邑子',
        room_number => 101,
        sign        => '双子座',
        color       => 'ピンク',
    );
}

1;
