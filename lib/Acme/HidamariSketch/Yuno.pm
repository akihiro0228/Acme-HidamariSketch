package Acme::HidamariSketch::Yuno;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return ( 
        name_ja     => 'ゆの',
        name_en     => 'yuno',
        nickname    => 'ゆのっち',
        birthday    => '5/5',
        voice_by    => '阿澄 佳奈',
        room_number => 201,
        sign        => '射手座',
    );
}

1;
