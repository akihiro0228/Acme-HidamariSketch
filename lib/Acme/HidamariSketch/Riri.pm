package Acme::HidamariSketch::Riri;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => 'リリ',
        name_en     => 'riri',
        nickname    => '???',
        birthday    => '???',
        voice_by    => '白石 涼子',
        room_number => {before => 101, first => undef, second => undef, third => undef},
        sign        => '???',
        color       => '???',
        course      => '美術科',
    );
}

1;
