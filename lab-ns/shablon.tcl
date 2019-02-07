set ns [new Simulator]
set nf [open out.nam w]
$ns namtrace-all $nf
set f [open out.tr w]
$ns trace-all $f
proc finish {} {
	global ns f nf
	$ns flush-trace
	close $f
	close $nf
	
	exec nam out.nam &
	exit 0
}
$ns at 5.0 "finish"
$ns run
