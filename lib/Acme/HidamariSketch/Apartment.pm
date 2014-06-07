package Acme::HidamariSketch::Apartment;
use strict;
use warnings;

our $VERSION = "0.01";


my @characters = qw(
    Yuno
    Miyako
    Hiro
    Sae
    Nori
    Nazuna
);


sub new {
    my $class = shift;
    
    my $self = bless {charcters => []}, $class;

    $self->_init;

    return $self;
}

sub knock {
    my ($self, $room_number) = @_;
  
    if (!defined $room_number) {
        printf "どこノックしてるんですか？\n";
        return 1;
    }

    foreach my $character (@{$self->{characters}}) {
        if ($room_number == $character->{room_number}) {
            return $character;    
        };
    }

    printf "そんな部屋番号ありませんよ？\n";
    return 1;
}

sub _init {
    my $self = shift;

    for my $character (@characters) {
        my $module_name = 'Acme::HidamariSketch::' . $character;

        eval "require $module_name;";
        push @{$self->{characters}}, $module_name->new;
    }

    return 1;
}

