# This file is encoded in Char::Hebrew.
die "This file is not encoded in Char::Hebrew.\n" if q{��} ne "\x82\xa0";

use Char::Hebrew;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('��A]��' =~ /��[^]]��/) {
    print "not ok - 1 $^X $__FILE__ ('��A]��' =~ /��[^]]��/)\n";
}
else {
    print "ok - 1 $^X $__FILE__ ('��A]��' =~ /��[^]]��/)\n";
}

__END__