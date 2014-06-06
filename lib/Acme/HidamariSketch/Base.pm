package Acme::HidamariSketch::Base;

use strict;
use warnings;

our $VERSION = '0.01';


sub new {
    my $class = shift;

    my $self = bless {}, $class;

    $self->_init;

    return $self;
}

sub _init {
    my $self = shift;
    my %info = $self->info;

    $self->{$_} = $info{$_} for keys %info;

    return 1;
}


1;
