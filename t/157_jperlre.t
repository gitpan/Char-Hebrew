# This file is encoded in Char::Hebrew.
die "This file is not encoded in Char::Hebrew.\n" if q{あ} ne "\x82\xa0";

use Char::Hebrew;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ-う' =~ /(あ[^-い]う)/) {
    print "not ok - 1 $^X $__FILE__ not ('あ-う' =~ /あ[^-い]う/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あ-う' =~ /あ[^-い]う/).\n";
}

__END__
