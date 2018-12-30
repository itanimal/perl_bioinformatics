use strict;

my $sSeq = "ATGCGTACGTGCGTAGATCGCGCTGATTGG";

# Check by using "if ..."
print "--------------------------------------------\n";
if ($sSeq=~/ACG/) {
	print "Original Sequence :".$sSeq."\n";       # Pre-Existing Variable
	print "Before a match    :".$`."\n";          # Pre-Existing Variable
	print "The match         :".$&."\n";          # Pre-Existing Variable
	print "After a match     :".$'."\n";          # Pre-Existing Variable
}



# Check the first/last position
print "--------------------------------------------\n";
if ($sSeq=~/^ATG/) {                              # Fist Position
	print "Original Sequence :".$sSeq."\n";       # Pre-Existing Variable
	print "Before a match    :".$`."\n";          # Pre-Existing Variable
	print "The match         :".$&."\n";          # Pre-Existing Variable
	print "After a match     :".$'."\n";          # Pre-Existing Variable
}
print "---------------------------------\n";
if ($sSeq=~/TGG$/) {                              # Last Position
	print "Original Sequence :".$sSeq."\n";       # Pre-Existing Variable
	print "Before a match    :".$`."\n";          # Pre-Existing Variable
	print "The match         :".$&."\n";          # Pre-Existing Variable
	print "After a match     :".$'."\n";          # Pre-Existing Variable
}



# Check one of characters / quantity of characters
my $sTemp1 = "1ab2cd3ef4gh5ij6gh789gh1ab2cd444gh";
my $sTemp2 = "A rat showed me an apple.";
my $sX     = "cry";
print "--------------------------------------------\n";
if ($sTemp1=~/[1-9]gh/) {                         # One of 1-9
	print "String : ".$sTemp1."\n";
	print "Concept: [1-9]gh\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp1=~/[1-9]{2,5}gh/) {                    # 2~5 characters of 1-9
	print "String : ".$sTemp1."\n";
	print "Concept: [1-9]{2,5}gh\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp1=~/[1-9]+gh/) {                        # ?: 0 or 1, *: 0 or more, +: 1 or more
	print "String : ".$sTemp1."\n";
	print "Concept: [1-9]+gh\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp1=~/4[1-9]+gh/) {                        # ?: 0 or 1, *: 0 or more, +: 1 or more
	print "String : ".$sTemp1."\n";
	print "Concept: 4[1-9]+gh\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp2=~/[$sX]at/) {                         # one of 'c', 'r', and 'y'
	print "String : ".$sTemp2."\n";
	print "Concept: \\s[n-t]at\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp2=~/[\s1-9][n-t]at/) {                  # \s: space, one of \s and 1-9, one of 'n' - 't'
	print "String : ".$sTemp2."\n";
	print "Concept: [\\s1-9][n-t]at\n";
	print "Match  : ".$&."\n";
}
print "---------------------------------\n";
if ($sTemp2=~/[brand][panda][python][play]/) {    # 'rat' or 'apple'
	print "String: ".$sTemp2."\n";
	print "Concept: [brand][panda][python][play]\n";
	print "Match: ".$&."\n";
}



# Reverse Complement
print "--------------------------------------------\n";
print "Original: ".$sSeq."\n";
print "Reverse : ".reverse($sSeq)."\n";
print "Rev.Comp: ".funcRevComp($sSeq)."\n";

sub funcRevComp {
	my $sSeq = reverse uc($_[0]);
	$sSeq =~ tr/ATGCN/TACGN/;                     # A -> T, T ->A, G -> C, C -> G, N -> N
	return $sSeq;	
}



# Substitution
my $sStr = "My name is EBKim. EBKim is my thesis advisor.";
print "--------------------------------------------\n";
print "Original             : ".$sStr."\n";
$sStr=~s/EBKim/JBPark/;                           # Single substitution
print "After 1 Substitution : ".$sStr."\n";
print "---------------------------------\n";
$sStr = "My name is EBKim. EBKim is my thesis advisor.";
print "Original             : ".$sStr."\n";
$sStr=~s/EBKim/JBPark/g;                          # Multiple substitution by 'g'
print "After 1 Substitution : ".$sStr."\n";

sub funcRevComp {
	my $sSeq = reverse uc($_[0]);
	$sSeq =~ tr/ATGCN/TACGN/;                     # A -> T, T ->A, G -> C, C -> G, N -> N
	return $sSeq;	
}



# GC Content
my @aResult = funcGcContent($sSeq);		# Get an array result from a function
print "--------------------------------------------\n";
print "Seq    : ".$sSeq."\n";
print "G Cnt  : ".$aResult[0]."\n";
print "C Cnt  : ".$aResult[1]."\n";
print "Length : ".$aResult[2]."\n";
print "GC(%)  : ".$aResult[3]."\n";

sub funcGcContent {
	my $sDnaSeq = uc(shift);            # or use "shift" function. 1st element of Array "@_"

	my $iGCnt = $sDnaSeq =~ tr/G/G/;    # Counting the number of "G"
	my $iCCnt = $sDnaSeq =~ tr/C/C/;    # Counting the number of "C"

	my $iGcContent = ($iGCnt+$iCCnt)*100 / length($sDnaSeq);
	$iGcContent = sprintf("%.2f", $iGcContent);

	return ($iGCnt, $iCCnt, length($sDnaSeq), $iGcContent);     # Return an Array
}


