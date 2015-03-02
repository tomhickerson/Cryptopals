#!/usr/bin/perl

use MIME::Base64;

sub hextob64 {
    my ($hex) = @_;

    my $bin = pack "H*", $hex;
    my $encoded = encode_base64($bin);

    return $encoded;
}
print "Encoded: " . hextob64('49276d206b') . "\n";
