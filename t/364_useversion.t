# This file is encoded in Char::Hebrew.
die "This file is not encoded in Char::Hebrew.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use 5.005;
use Char::Hebrew;
print "1..1\n";

print "ok - 1 $^X $__FILE__\n";

__END__
