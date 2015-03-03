#!/usr/bin/perl

sub fixedxor {
    my ($str1, $str2) = @_;
    my $value = length($str1);
    my $bin1 = pack "H*", $str1;
    my $bin2 = pack "H*", $str2;
    print $bin1 ^ $bin2 . "\n";
    my $otheranswer = $bin1 ^ $bin2;
    my $unpackedotheranswer = unpack "H*", $otheranswer;
    #print $unpackedotheranswer . "\n";

    return $unpackedotheranswer;
}

my $first = "1c0111001f010100061a024b53535009181c";
my $second = "686974207468652062756c6c277320657965";

print "Result: " . fixedxor($first, $second) . "\n";
