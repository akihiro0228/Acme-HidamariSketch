package Acme::HidamariSketch::Miyako;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => '宮子',
        name_en     => 'miyako',
        nickname    => '宮ちゃん',
        birthday    => '10/10',
        voice_by    => '水橋 かおり',
        room_number => 202,
        sign        => '天秤座',
    );
}

1;
