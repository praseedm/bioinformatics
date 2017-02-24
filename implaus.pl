#Read a set of sequences of same length from terminal and find out the implausible sequence(s)

print "Enter length of a sequence : ";
$len = <STDIN>;
if($len <= 0){
	print "INVALID !!\n";
	exit;
}

print "Enter count of sequences : ";
$count = <STDIN>;
if($count <= 0){
	print "INVALID !!\n";
	exit;
}

$x = 0;
@array = ();
print "Enter Sequences :\n";
while($x < $count){
	$in = <STDIN>;
	chomp $in;
	@array[$x] = $in;
	$x++;
}

#Flatening...
@sp_array = ();
$x = 0;
while($x < $len){
	$y = 0;
	@temp = ();
	while($y < $count){
		@help = split('',@array[$y]);
		splice(@temp,$y,0, @help[$x]);
		$y++;
		}
	$new = join('',@temp);
	@sp_array[$x] = $new;	
	$x++;
}

@implau = ();
$x = 0;
while($x < $len){
	$a=0; $c=0; $g=0 ; $t=0;
	@help = split('',@sp_array[$x]);
	$i=0;
	$ch = '';
	$gg = 0;
	while($i < $count){
		$temp = @help[$i];
		if($temp =~ /a/ig){$a++;}
		elsif($temp =~ /g/ig){$g++;}
		elsif($temp =~ /c/ig){$c++;}
		elsif($temp =~ /t/ig){$t++;}
		
		$ch = 'A';
		$gg = $a;
		
		if($a >= $gg){
			$ch = 'A';
			$gg = $a;
		}
		if($c >= $gg){
			$ch = 'C';
			$gg = $c;
		}
		if($g >= $gg){
			$ch = 'G';
			$gg = $g;
		}
		if($t >= $gg){
			$ch = 'T';
			$gg = $t;
		}
		$i++
	}
	splice(@implau,$x,0, $ch);
	$x++;
}

#print "@array\n";
#print "@sp_array\n";
print "Result : ","@implau\n";
exit;
