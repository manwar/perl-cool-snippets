use v5.43;
use experimental qw(refaliasing declared_refs);

# https://metacpan.org/release/HYDAHY/perl-5.43.8/view/pod/perldelta.pod#Multi-variable-foreach-can-now-use-aliased-references

my %inventory = (
    apples  => [qw(Fuji Gala Granny)],
    berries => [qw(Blueberry Strawberry)],
);

foreach my ($category, \@items) (%inventory) {
    say "Category: $category";
    say "   Count: " . scalar(@items);
    push @items, "NewItem";
    say "   Items: " . join(", ", @items);
}
