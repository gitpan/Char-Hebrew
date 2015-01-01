# This file is encoded in Char::Hebrew.
die "This file is not encoded in Char::Hebrew.\n" if q{‚ } ne "\x82\xa0";

use Char::Hebrew;

print "1..12\n";

my $var = '';

# Char::Hebrew::eval $var has Char::Hebrew::eval "..."
$var = <<'END';
Char::Hebrew::eval " if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } "
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval qq{...}
$var = <<'END';
Char::Hebrew::eval qq{ if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval '...'
$var = <<'END';
Char::Hebrew::eval ' if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } '
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval q{...}
$var = <<'END';
Char::Hebrew::eval q{ if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval $var
$var = <<'END';
Char::Hebrew::eval $var2
END
my $var2 = q{ if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } };
if (Char::Hebrew::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval (omit)
$var = <<'END';
Char::Hebrew::eval
END
$_ = "if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 }";
if (Char::Hebrew::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has Char::Hebrew::eval {...}
$var = <<'END';
Char::Hebrew::eval { if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return 1 } else { return 0 } }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has "..."
$var = <<'END';
if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return "1" } else { return "0" }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has qq{...}
$var = <<'END';
if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return qq{1} } else { return qq{0} }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has '...'
$var = <<'END';
if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return '1' } else { return '0' }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has q{...}
$var = <<'END';
if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return q{1} } else { return q{0} }
END
if (Char::Hebrew::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Hebrew::eval $var has $var
$var = <<'END';
if (Char::Hebrew::length(q{¦±²²³´´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ}) == 47) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::Hebrew::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
