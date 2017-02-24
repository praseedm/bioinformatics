# Concatenating DNA 
# Store two DNA fragments into two variables called $DNA1 and $DNA2 
$DNA1 = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC'; 
$DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA'; 
# Print the DNA onto the screen 
print "Original two DNA fragments:\n\n"; 
print $DNA1, "\n"; 
print $DNA2, "\n\n"; 
# Concatenate the DNA fragments into a third variable and 
print them 
# Using "string interpolation" 
$DNA3 = "$DNA1$DNA2"; 
print "(string interpolation):\n\n"; 
print "$DNA3\n\n"; 
# An alternative way using the "dot operator": 
# Concatenate the DNA fragments into a third variable and 
print them 
$DNA3 = $DNA1 . $DNA2; 
print "(dot operator):\n\n"; 
print "$DNA3\n\n"; 
# Print the same thing without using the variable $DNA3 
print "(without using the variable):\n\n"; 
print $DNA1, $DNA2, "\n"; 
exit; 
