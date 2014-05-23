package Acme::MilkyHolmes::Role::HasPersonalColor;
use Mouse::Role;
use Encode;

requires 'color';
requires 'color_enable';

my $ansi_colors = {
    pink   => "\x1b[38;5;13m",
    yellow => "\x1b[38;5;3m",
    green  => "\x1b[38;5;2m",
    blue   => "\x1b[38;5;4m",
    #white  => "",
    #black  => "",
};

sub color_enable {
    my ($self) = shift;

    if ( @_ ) {
        $self->{color_enable} = $_[0];
    }
    else {
        if ( defined $self->{color_enable} ) {
            return $self->{color_enable}
        }
        if ( defined $self->common->[0]->{color_enable} ) {
            my $color_enable = $self->common->[0]->{color_enable} + 0;
            return $color_enable;
        }
    }
    return 1; #default is true
}

sub color {
    my ($self) = @_;
    return $self->common->[0]->{color};
}


sub say {
    my ($self, $comment) = @_;
    if ( defined $self->color && $self->color_enable ) {
        print $ansi_colors->{$self->color};
    }
    print encode_utf8($self->nickname);
    print  ': ';
    print encode_utf8($comment), "\x1b[0m\n";
}


1;

