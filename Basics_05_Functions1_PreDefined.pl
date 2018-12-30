use strict;
use List::Util qw/ min max /;

# Sorting
my @aWords = qw(mno abc def jkl pqr ghi aBc);       # Different way to add elements to an array
print "--------------------------------------------\n";
print "Sorted: Lexical Order......\n";
print join("-", sort(@aWords))."\n";                # Sorting lexically
print join("-", sort {$a cmp $b} @aWords)."\n";     # Sorting lexically (Explicit expression)
print "Sorted: Reversed Order......\n";
print join("-", sort {$b cmp $a} @aWords)."\n";     # Sorting lexically in reversed order

my @aNumbers = qw(2 1 2 3 10);
print "--------------------------------------------\n";
print "Sorted: Lexical Order......\n";
print join("-", sort(@aNumbers))."\n";              # Sorting lexically
print "Sorted: Ascending Order......\n";
print join("-", sort {$a <=> $b} @aNumbers)."\n";   # Sorting numerically (Ascending)
print "Sorted: Descending Order......\n";
print join("-", sort {$b <=> $a} @aNumbers)."\n";   # Sorting numerically (Descending)

# min, max
print "--------------------------------------------\n";
print "Min: ".min(@aNumbers)."\n";                  # Minimum
print "Max: ".max(@aNumbers)."\n";                  # Maximum

# lc, uc
print "--------------------------------------------\n";
print "Lower Case: "."DNA --> ".lc("DNA")."\n";     # lower case
print "Lower Case: ".lc(join("-", @aWords))."\n";   # lower case
print "Upper Case: "."dna --> ".uc("dna")."\n";     # upper case
print "Upper Case: ".uc(join("-", @aWords))."\n";   # upper case

# length, the number of elements.
print "--------------------------------------------\n";
print "Length: ".length("abcde")."\n";
print "No of elements: ".($#aWords + 1)."\n";

# shift, pop, unshift, push
print "--------------------------------------------\n";
print "Before:   ".join("-", @aWords)."\n";
my $sTemp1 = shift(@aWords);
print "shift:    ".join("-", @aWords)."\n";            # Get the 1st element out
print "sTemp1:   ".$sTemp1."\n";
my $sTemp2 = pop(@aWords);
print "pop:      ".join("-", @aWords)."\n";           # Get the last element out
print "sTemp2:   ".$sTemp2."\n";

unshift(@aWords, "unshift");
print "unshift:  ".join("-", @aWords)."\n";           # Add elements at the 1st position
push(@aWords, "push");
print "push:     ".join("-", @aWords)."\n";           # Add elements at the last position

