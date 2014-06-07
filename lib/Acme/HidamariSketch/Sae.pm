package Acme::HidamariSketch::Sae;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.01';


sub info {
    return (
        name_ja     => '沙英',
        name_en     => 'sae',
        nickname    => 'さえ',
        birthday    => '11/3',
        voice_by    => '新谷 良子',
        room_number => 102,
        sign        => '蠍座',
        color       => 'パープル',
    );
}

1;
