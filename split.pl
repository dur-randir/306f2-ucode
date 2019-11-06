$/=undef;
@foo=map {sprintf "0x%08x", $_} unpack("L*", <>);
print "/* m6f306f2_0000003c.inc */\n";
warn "got @{[ scalar @foo ]} elements";
for (@foo) {
    print $_, ", ";
    print "\r\n" unless ++$i % 4;
}
