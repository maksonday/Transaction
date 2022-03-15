#!/usr/bin/perl
use strict;
use warnings;

use Transaction;

my $log_file = shift;
my $transaction = Transaction->new($log_file);
$transaction->run();
use Data::Dumper;
my $string = '  key1  :  [val1, val2]  ;  key2  :  val2  ';
my @key_val_pairs = split /;/, $string;
my $res = Transaction::string_to_struct($string);
print Dumper $res;
