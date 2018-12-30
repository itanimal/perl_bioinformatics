use strict;

# @ARGV
# Run this file as follows;
# perl ex004.pl example004.txt
# Contents of example004.txt
# EBKim	50	30	70
# GDJin	55	40	60
# IHYoo	45	55	70


# Get an Argument
my $sFileToOpen = $ARGV[0];     # Alternatively, my $sFileToOpen = shift;
print "--------------------------------------------\n";
print "File to open: ".$sFileToOpen."\n";


# Open a file for reading
open(hIn, $sFileToOpen) or die;
print "--------------------------------------------\n";
while (my $sLine = <hIn>) {
	print $sLine;        # This line includes "\n" and "\r".
}
print "\n";
close(hIn);

# Line symbols
open(hIn, $sFileToOpen) or die;
print "--------------------------------------------\n";
while (my $sLine = <hIn>) {
	$sLine=~s/\n//g;     # Remove "\n" from the current line
	$sLine=~s/\n//g;     # Remove "\r" from the current line

	print $sLine."===";
	print $sLine."\n";
}
close(hIn);




# Splitting a line
open(hIn, $sFileToOpen) or die;
my @aTemp = ();
my $iCnt  = 0;
print "--------------------------------------------\n";
print "Opening: ".$sFileToOpen."\n";
print "-----------------------------------\n";
while (my $sLine = <hIn>) {
	$iCnt++;
	print "Line: ".$iCnt."\n";

	$sLine=~s/\n//g;     # Remove "\n" from the current line
	$sLine=~s/\n//g;     # Remove "\r" from the current line

	print "Original: ".$sLine."\n";

	my @aLine = split("\t", $sLine);
	@aTemp = @aLine;     # Save information in a temporary array
	print "Split:    ";
	foreach my $sCurElement (@aLine) {
		print $sCurElement."=";
	}
	print "\n";

	my $sNewLine = join("-", @aLine);
	print "Join:     ".$sNewLine."\n";
	print "-----------------------------------\n";
}
close(hIn);






# Writing a file
my $sFileToSave = "example004_save.txt";
print "--------------------------------------------\n";
print "Writing: ".$sFileToSave."\n";
print "-----------------------------------\n";
open(hOut, ">".$sFileToSave) or die;
foreach my $sCurElement (@aTemp) {
	print "Screen: ".$sCurElement."\n";
	print hOut $sCurElement."\n";
}
close(hOut);

