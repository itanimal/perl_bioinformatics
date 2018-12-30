use strict;
use List::Util qw/ min max /;

my @aNumbers = (90, 80, 70, 60, 80, 90, 90);

# Returning a Scalar / Statistical functions
my $fSum = funcArraySum(@aNumbers);

print "--------------------------------------------\n";
print "No. of elements          : ".($#aNumbers + 1)."\n";
print "--------------------------------------------\n";
print "Sum of elements          : ".$fSum."\n";                        # by using a variable
print "Sum of elements          : ".funcArraySum(@aNumbers)."\n";      # by using a function
print "--------------------------------------------\n";
print "Mean of elements         : ".funcMean(@aNumbers)."\n";          # by using a function
print "Pop.StDev of elements    : ".funcStDev(0, @aNumbers)."\n";      # by using a function
print "Sample.StDev of elements : ".funcStDev(1, @aNumbers)."\n";      # by using a function



# Returning an Array / GC Content(%)
my $sSeq1 = "ATCGCGATAGTCGTACGATGATCGta";
my @aResult = funcGcContent($sSeq1);		# Get an array result from a function

print "--------------------------------------------\n";
print "Seq1  : ".$sSeq1."\n";
print "Seq2  : ".$aResult[0]."\n";
print "G Cnt : ".$aResult[1]."\n";
print "C Cnt : ".$aResult[2]."\n";
print "Length: ".$aResult[3]."\n";
print "GC(%) : ".$aResult[4]."\n";



# Returning an Array / Mass Caculation
my %hScore_by_Name = ();
$hScore_by_Name{'EBKim'} = 90;
$hScore_by_Name{'GDJin'} = 80;
$hScore_by_Name{'SJKim'} = 85;
my %hScore2_by_Name = funcIncrement(%hScore_by_Name);		# Get an hash result from a function

print "--------------------------------------------\n";
print "EBKim  : ".$hScore_by_Name{'EBKim'}." - ".$hScore2_by_Name{'EBKim'}."\n";
print "GDJin  : ".$hScore_by_Name{'GDJin'}." - ".$hScore2_by_Name{'GDJin'}."\n";
print "SJKim  : ".$hScore_by_Name{'SJKim'}." - ".$hScore2_by_Name{'SJKim'}."\n";




sub funcArraySum {
	my @aData = @_;     # Pre-Existing Array "@_"
	my $fSum = 0;

	foreach my $fCurVal (@aData) {
		$fSum += $fCurVal;
	}

	return $fSum;       # Return a value / Optional
}

sub funcMean {
	my @aData = @_;             # Pre-Existing Array "@_"
	my $fSum = 0;

	foreach my $fCurVal (@aData) {
		$fSum += $fCurVal;
	}

	my $iCnt = $#aData + 1;

	return $fSum/$iCnt;       # Return a value
}


sub funcStDev {
	my $iOption = shift;        # 0: STD of Polulation / 1: STD of Samples
	my @aData = @_;             # Pre-Existing Array "@_"

	my $iCnt = $#aData + 1;
	my $fAvg = funcMean(@aData);

	my $fSumSqrDiff = 0;
	foreach my $fCurVal (@aData) {
		my $fSqrDiff = ($fCurVal - $fAvg) ** 2;
	    $fSumSqrDiff = $fSumSqrDiff + $fSqrDiff;
	}

	my $fStd = sqrt($fSumSqrDiff/($iCnt - $iOption));

	return $fStd;               # Return a value
}


sub funcGcContent {
	my $sDnaSeq = uc($_[0]);            # or use "shift" function. 1st element of Array "@_"

	my $iGCnt = $sDnaSeq =~ tr/G/G/;    # Counting the number of "G"
	my $iCCnt = $sDnaSeq =~ tr/C/C/;    # Counting the number of "C"

	my $iGcContent = ($iGCnt+$iCCnt)*100 / length($sDnaSeq);
	$iGcContent = sprintf("%.2f", $iGcContent);

	return ($sDnaSeq, $iGCnt, $iCCnt, length($sDnaSeq), $iGcContent);     # Return an Array
}



sub funcIncrement {
	my %hVal_by_Key = @_;               # Hashes are treated as arrays.

	foreach my $sCurKey (keys %hVal_by_Key) {
		$hVal_by_Key{$sCurKey} = $hVal_by_Key{$sCurKey} * 1.05;
	}
	return %hVal_by_Key;     # Return a hash
}

