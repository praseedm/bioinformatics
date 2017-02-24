# Transcribing DNA into RNA 
# The DNA 
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC'; 
# Print the DNA onto the screen 
print "starting DNA:\n\n"; 
print "$DNA\n\n"; 
# Transcribe the DNA to RNA by substituting all T's with U's. 
$RNA = $DNA; 
$RNA =~ s/T/U/g; 
# Print the RNA onto the screen 
print "transcribing the DNA to RNA:\n\n"; 
print "$RNA\n"; 
# Exit the program. 
exit; 
