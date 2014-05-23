package Acme::MilkyHolmes;
use 5.008005;
use strict;
use warnings;
use parent qw(Exporter);

our $VERSION = "0.01";

use Acme::MilkyHolmes::Character::SherlockShellingford;
use Acme::MilkyHolmes::Character::NeroYuzurizaki;
use Acme::MilkyHolmes::Character::HerculeBarton;
use Acme::MilkyHolmes::Character::CordeliaGlauca;
use Acme::MilkyHolmes::Character::KazumiTokiwa;
use Acme::MilkyHolmes::Character::AliceMyojingawa;
use Readonly;

Readonly our $MilkyHolmesFeathers => [
    'KazumiTokiwa',
    'AliceMyojingawa',
];
Readonly our $MilkyHolmes => [
    'SherlockShellingford',
    'NeroYuzurizaki',
    'HerculeBarton',
    'CordeliaGlauca',
];
Readonly our $MilkyHolmesSisters  => [
    @{ $MilkyHolmes },
    @{ $MilkyHolmesFeathers },
];

our @EXPORT_OK = qw($MilkyHolmes $MilkyHolmesFeathers $MilkyHolmesSisters);


sub members {
    my ($class, %options) = @_;
    return $class->members_of($MilkyHolmes, %options);
}

sub members_of {
    my ($class, $team, %options) = @_;

    my @members = ();
    for my $member_name ( @{ $team }  ) {
        my $pkg = "Acme::MilkyHolmes::Character::$member_name";
        my $member = $pkg->new();
        $member->locale($options{locale}) if ( exists $options{locale} );
        push @members, $member;
    }
    return @members;
}


1;
__END__

=encoding utf-8

=head1 NAME

Acme::MilkyHolmes - There's more than one way to do it!(seikai ha hitotsu! janai!!)

=head1 SYNOPSIS

    use Acme::MilkyHolmes;

=head1 DESCRIPTION

Acme::MilkyHolmes is ...

=head1 LICENSE

Copyright (C) Takuya Tsuchida.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Takuya Tsuchida E<lt>tsucchi@cpan.orgE<gt>

=cut

