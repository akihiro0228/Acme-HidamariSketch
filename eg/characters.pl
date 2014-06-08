#!perl
use strict;
use warnings;
use utf8;
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname(__FILE__), '../lib');

use Acme::HidamariSketch;

my $hidamari = Acme::HidamariSketch->new;
my @characters = $hidamari->characters;

# みんなの情報が見たい放題
foreach my $character (@characters) {
    printf "-----------------------\n";
    printf "name:        " . $character->{name_ja}     . "\n";
    printf "birthday:    " . $character->{birthday}    . "\n";
    printf "sign:        " . $character->{sign}        . "\n";
    printf "color:       " . $character->{color}       . "\n";
    printf "room_number:\n{\n";
    my $room_number = $character->{room_number};
    for my $year (qw/before first second third/) {
        if (defined $room_number->{$year}) {
            printf '  ' . $year . ': ' . $room_number->{$year} . "\n";
        }
        else {
            printf '  ' . $year . ": undef\n";
        };
    }
    printf "}\n";
}

