use strict;

# Creating an array and adding elements to the array
my @aStudent = ("EBKim", "HCNoh", "IHYoo", "GDJin");


# Conditional Statement 1
print "--------------------------------------------\n";
if ($aStudent[3] eq "IHYoo") {          # String comparison: eq or ne
	print "Index 3 ... IHYoo"."\t"."TRUE\n";
}


# Conditional Statement 2
print "--------------------------------------------\n";
if ($aStudent[3] eq "IHYoo") {
	print "Index 3 ... IHYoo"."\t"."TRUE\n";
} else {
	print "Index 3 ... IHYoo"."\t"."FALSE\n";
}


# Conditional Statement 3
print "--------------------------------------------\n";
if ($aStudent[3] eq "IHYoo") {
	print "Index 3 ... IHYoo"."\t"."TRUE\n";
} elsif ($aStudent[3] eq "GDJin") {
	print "Index 3 ... IHYoo"."\t"."FALSE\n";
	print "Index 3 ... GDJin"."\t"."TRUE\n";
} else {
	print "Index 3 ... ?????"."\t"."Who is Index 3?\n";
}





my $iCnt1 = 0;
my $iCnt2 = 1;

# Conditional Statement 4
print "--------------------------------------------\n";
if ($iCnt1 == 0 && $iCnt2 == 1) {     # Comparison of Numerical Values: == or !=
	print "iCnt1 = 0 and iCnt2 = 1\n";
} elsif ($iCnt1 == 0 || $iCnt2 == 2) {
	print "iCnt1 = 0 or iCnt2 = 2\n";
}

# Combination of conditions: and(&&), or(||)
if ($iCnt1 == 0 || $iCnt2 == 2) {
	print "iCnt1 = 0 or iCnt2 = 2\n";
}

# Conditional Statement 5
print "--------------------------------------------\n";
unless ($iCnt1 == 0) {     # unless = not if
	print "iCnt is not 0\n";
}
unless ($iCnt1 == 1) {     # unless = not if
	print "iCnt is not 1\n";
}


