#!/usr/bin/perl

use MIME::Base64;

sub hextob64 {
    my ($hex) = @_;

    my $bin = pack "H*", $hex;
    my $encoded = encode_base64($bin);

    return $encoded;
}
print "Encoded: " . hextob64('49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f6e6f7573206d7573206d757368726f6f6d') . "\n";
