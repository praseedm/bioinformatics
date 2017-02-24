# Transcribing DNA into RNA 
# The DNA 
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC'; 
print "\n\nOriginal DNA\n",$DNA;
# Make a new copy of the DNA (see why we saved the original?) 
$revcom = reverse $DNA; 
# See the text for a discussion of tr/// 
$revcom =~ tr/ACGTacgt/TGCAtgca/; 
# Print the reverse complement DNA onto the screen 
print "\n\nHere is the reverse complement DNA:\n"; 
print "$revcom\n"; 
print "\nThis time it worked!\n\n"; 
exit; 
