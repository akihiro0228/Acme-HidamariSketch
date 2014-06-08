package Acme::HidamariSketch::Apartment;
use strict;
use warnings;
use Data::Dumper;


our $VERSION = "0.04";


sub new {
    my ($class, $args) = @_;


    my $self = bless {
        tenants => $args->{tenants},
        year    => $args->{year}
    }, $class;

    return $self;
}

sub knock {
    my ($self, $knock_room) = @_;
  
    if (!defined $knock_room) {
        printf "どこノックしてるんですか？\n";
        return 1;
    }

    for my $tenant (@{$self->{tenants}}) {
        my $room_number = $tenant->{room_number}->{$self->{year}};
        if (defined $room_number and $knock_room == $room_number) {
            return $tenant;
        };
    }

    printf "そんな部屋番号ありませんよ？\n";
    return 1;
}

