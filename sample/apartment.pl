#!perl
use strict;
use warnings;
use utf8;
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname(__FILE__), '../lib');

use Acme::HidamariSketch;

my $hidamari = Acme::HidamariSketch->new;
my $apartment = $hidamari->apartment;

# ドアをノックしないとだめっしょ？
# $apartment->knock;

# 各部屋をノックすると会えます
printf $apartment->knock(201)->{name_ja} . "\n";
printf $apartment->knock(202)->{name_ja} . "\n";
printf $apartment->knock(203)->{name_ja} . "\n";
printf $apartment->knock(101)->{name_ja} . "\n";
printf $apartment->knock(102)->{name_ja} . "\n";
printf $apartment->knock(103)->{name_ja} . "\n";

# 存在しない部屋はノックできないよ？
# $apartment->knock(104);
