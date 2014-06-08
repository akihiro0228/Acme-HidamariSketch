package Acme::HidamariSketch::Nori;

use strict;
use warnings;

use base qw/Acme::HidamariSketch::Base/;

our $VERSION = '0.02';


sub info {
    return (
        name_ja     => '乃莉',
        name_en     => 'nori',
        nickname    => qw/のりっぺ ノリスケ ノリコさん/,
        birthday    => '2/6',
        voice_by    => '原田 ひとみ',
        room_number => {before => undef, first => undef, second => 103, third => 103},
        sign        => '水瓶座',
        color       => 'ブルー',
        course      => '美術科',
    );
}

1;
