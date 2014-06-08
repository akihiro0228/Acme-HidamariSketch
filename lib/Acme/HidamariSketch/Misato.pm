package Acme::HidamariSketch::Misato;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => 'みさと',
        name_en     => 'misato',
        nickname    => '???',
        birthday    => '???',
        voice_by    => '小清水 亜美',
        room_number => {before => 201, first => undef, second => undef, third => undef},
        sign        => '???',
        color       => '???',
        course      => '美術科',
    );
}

1;
