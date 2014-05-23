package Acme::MilkyHolmes::Role::ToysOwner;
use Mouse::Role;

requires qw(toys);

sub toys {
    my ($self) = @_;
    return $self->_localized_field('toys');
}

1;
