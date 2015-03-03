#!/usr/bin/perl

use MIME::Base64;

sub hextob64 {
    my ($hex) = @_;

    my $bin = pack "H*", $hex;
    my $encoded = encode_base64($bin);

    return $encoded;
}

sub fixedxor {
    my ($string) = @_;
    my $value = 0;
    $value ^= $_ for unpack "C*", hextob64($string);
    return $value;
}

my $first = "1c0111001f010100061a024b53535009181c";
my $second = "686974207468652062756c6c277320657965";

print "Result: " . fixedxor($first, $second) . "\n";
