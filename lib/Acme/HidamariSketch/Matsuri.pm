package Acme::HidamariSketch::Matsuri;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return ( 
        name_ja     => '茉里',
        name_en     => 'matsuri',
        nickname    => '???',
        birthday    => '???',
        voice_by    => '???',
        room_number => '???',
        sign        => '???',
        color       => '???',
    );
}

1;
