package  Wagayatei::Web::C::Root;
use strict;
use warnings;

use parent qw/ Wagayatei::Web::Controller /;
use Wagayatei::Container;

sub do_index {
    my ( $class, $c ) = @_;
    $c->stash->{body} = "Hello Chiffon World!";
}

1;

