package Acme::HidamariSketch;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.05";


my @characters = qw(
    Yuno
    Miyako
    Hiro
    Sae
    Nori
    Nazuna
    Matsuri
    Riri
    Misato
);

my %year = (
    before => 0,
    first  => 1,
    second => 2,
    third  => 3,
);

my $SINGLETON;


sub new {
    if ($SINGLETON) {
        return $SINGLETON;
    }
    else {
        my $class = shift;

        my $SINGLETON = bless {characters => [], year => 'third'}, $class;

        $SINGLETON->_init;

        return $SINGLETON;
    }
}

sub characters {
    my ($self, %options) = @_;

    return @{$self->{characters}};
}

sub apartment {
    my $self = shift;

    my $module_name = 'Acme::HidamariSketch::Apartment';

    eval "require $module_name";

    my @tenant;
    for my $character (@{$self->{characters}}) {
        if (defined $character->{room_number}->{$self->year}) {
            push @tenant, $character;
        }
    }

    return $module_name->new({
        tenants => [@tenant],
        year    => $self->{year},
    });
}

sub year {
    my $self = shift;
    if (@_) {
        my $year = shift;
        for my $key (keys %year) {
            $self->{year} = $year if ($key eq $year);
        }
    }
    return $self->{year};
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

1;
__END__

=encoding utf-8

=head1 NAME

Acme::HidamariSketch - It's new $module

=head1 SYNOPSIS

    use Acme::HidamariSketch;

=head1 DESCRIPTION

Acme::HidamariSketch is ...

=head1 LICENSE

Copyright (C) akihiro_0228.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

akihiro_0228 E<lt>nano.universe.0228@gmail.comE<gt>

=cut

