use strict;

# Scalar Variable (a number, a string, a reference, a logical value, etc)
my $iStudentCnt    = 0;        # Creating and initiating a variable
my $sName          = "";       # Creating a variable

# Initiating a Variable
$sName          = "EBKim";

# Printing to Standar Out
print "--------------------------------------------\n";
print "Output: ".$iStudentCnt."\t".$sName."\n";


# Changing Variables
$sName          = "HCNoh";
$iStudentCnt = $iStudentCnt + 1;

# Formatted Printing
print "--------------------------------------------\n";
printf("Output: %s\n", $sName);

printf("Output: %08d\n", $iStudentCnt);
printf("Output: %8.3f\n", $iStudentCnt);

printf("Output: %8.3f\n", $iStudentCnt++);
printf("Output: %8.3f\n", $iStudentCnt);

printf("Output: %8.3f\n", ++$iStudentCnt);
printf("Output: %8.3f\n", $iStudentCnt);




# Array Variables
my @aMembers            = ();       # Creating a variable

# Initiating a Variable
$aMembers[0]  = "EBKim";
$aMembers[2]  = "JBPark";
$aMembers[1]  = "HCNoh";
$aMembers[3]  = "GDJin";

# Printing arrays
print "--------------------------------------------\n";
print @aMembers."\n";      # print out the number of array size
print @aMembers;           # print out all elements of the array
print "\n";
print join("\t", @aMembers)."\n";  # Joining all elements of the array with "\t"

# Changing elements of an Array
$aMembers[3]  = "IHYoo";           # Chaning an element
my $sTemp = shift(@aMembers);      # Get the first element and assign it to a scalar variable
print join("\t", @aMembers)."\n";  # Joining all elements of the array with "\t"
print $sTemp."\n";


# Hash Variables
my %hScore_by_Student   = ();       # Creating a variable

# Initiating a Variable
$hScore_by_Student{"EBKim"}  = 50;
$hScore_by_Student{"HCNoh"}  = 70;
$hScore_by_Student{"JBPark"} = 40;
$hScore_by_Student{"GDJin"}  = 60;

# Printing hashes
print "--------------------------------------------\n";
print $hScore_by_Student{"EBKim"}."\t";      # print out a value for a key
print $hScore_by_Student{"HCNoh"}."\t";      # print out a value for a key
print $hScore_by_Student{"JBPark"}."\t";     # print out a value for a key
print $hScore_by_Student{"GDJin"}."\n";      # print out a value for a key

# Changing values for a specific key
$hScore_by_Student{"JBPark"} = 70;
print $hScore_by_Student{"EBKim"}."\t";      # print out a value for a key
print $hScore_by_Student{"HCNoh"}."\t";      # print out a value for a key
print $hScore_by_Student{"JBPark"}."\t";     # print out a value for a key
print $hScore_by_Student{"GDJin"}."\n";      # print out a value for a key


# For your further improvement
print "--------------------------------------------\n";
foreach my $sCurElement (@aMembers) {
	print $sCurElement."\t";
}
print "\n";

print "--------------------------------------------\n";
foreach my $sCurKeys (keys %hScore_by_Student) {
	print $sCurKeys."\t".$hScore_by_Student{$sCurKeys}."\n";
}
