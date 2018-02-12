#!/usr/bin/perl
my $ip6 = "ae90:98b:0:9876::70";

print "$ip6\n";

my $ipfull = $ip6;
my @iplist = split(/:/ , $ip6 , 8);
my $cnt = 8 - @iplist+1;
my $zero = ":0000" x $cnt;
$ipfull =~ s/::/${zero}:/;

my @ipl = split(/:/ , $ipfull , 8);

printf( "%04s:%04s:%04s:%04s:%04s:%04s:%04s:%04s\n" , @ipl[0],@ipl[1],@ipl[2],@ipl[3],@ipl[4],@ipl[5],@ipl[6],@ipl[7],);

