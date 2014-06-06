package Acme::HidamariSketch;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

use Carp qw/croak/;


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

    my $self = bless {characters => []}, $class;

    $self->_init;

    return $self;
}

sub characters {
    my $self = shift;

    return @{$self->{characters}};
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

