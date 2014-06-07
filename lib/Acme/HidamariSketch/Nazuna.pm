package Acme::HidamariSketch::Nazuna;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => 'なずな',
        name_en     => 'nazuna',
        nickname    => 'なずな殿',
        birthday    => '1/7',
        voice_by    => '小見川 千明',
        room_number => 203,
        sign        => '山羊座',
        color       => 'ホワイト',
    );
}

1;
