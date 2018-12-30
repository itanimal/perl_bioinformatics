use strict;

# for loop: 0 through 9
print "--------------------------------------------\n";
for (my $i=0; $i<10;$i++) {
	print $i."\t";
}
print "\n";


# for loop: 1 through 9
for (my $i=1; $i<=9;$i++) {
	print $i."\t";
}
print "\n";

# Sum of 1 through 10
print "--------------------------------------------\n";
my $iSum = 0;
for (my $i=1; $i<=10;$i++) {
	$iSum = $iSum + $i;
	print $i."\t".$iSum."\n";
}



# Double for loop - the rules of multiplication (������)
print "--------------------------------------------\n";
for (my $i=2; $i<=9;$i++) {
	for (my $j=1; $j<=9;$j++) {
		print $i." X ".$j." = ".($i*$j)."\n";
	}
	print "------------\n";
}




# foreach loop
my @aMembers = ("EBKim", "JBPark", "HCNoh", "GDJin");       # Creating a variable
my %hScore_by_Student   = ();       # Creating a variable
$hScore_by_Student{"EBKim"}  = 50;
$hScore_by_Student{"HCNoh"}  = 70;
$hScore_by_Student{"JBPark"} = 40;
$hScore_by_Student{"GDJin"}  = 60;

print "--------------------------------------------\n";
foreach my $sCurElement (@aMembers) {
	print $sCurElement."\t";
}
print "\n";

print "--------------------------------------------\n";
foreach my $sCurKeys (keys %hScore_by_Student) {
	print $sCurKeys."\t".$hScore_by_Student{$sCurKeys}."\n";
}





# while loop
my $iCond1 = 1;
my $iCond2 = 1;
print "--------------------------------------------\n";
while ($iCond1 == 1) { # repeat again and again if iCond1 is 1
	print $iCond1."\t"."iCond1 is 1\n";
	$iCond1++;
}
print $iCond1."\t"."Stopped here!"."\n";

print "--------------------------------------------\n";
until ($iCond2 == 4) {  # repeat if iCond2 is not 4
	print $iCond2."\t"."iCond2 is not 4\n";
	$iCond2++;
}
print $iCond2."\t"."Stopped here!"."\n";





# Controlling while loop
my $iNum  = 0;
print "--------------------------------------------\n";
while (1) {       # Always the condition is TRUE(1). 0 is FALSE.
	$iNum++;

	if ($iNum >= 5001) {
		last;
	}

	if ($iNum % 1000 == 0) { # % Modulus for remainder
		print "Current iNum = ".$iNum."\n";
	}
}
