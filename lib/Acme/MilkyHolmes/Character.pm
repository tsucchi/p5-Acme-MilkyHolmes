package Acme::MilkyHolmes::Character;
use Mouse;

use Data::Section::Simple;
use Localizer::Resource;
use Localizer::Style::Gettext;
use YAML::Tiny;

has localizer => (
    is  => 'ro',
);

has locale => (
    is       => 'rw',
    isa      => 'Str',
    required => 1,
    default  => 'ja',
);

has common => (
    is => 'ro',
);

sub name {
    my ($self) = @_;
    return $self->_localized_field('name');
}

sub surname {
    my ($self) = @_;
    return $self->_localized_field('surname');
}

sub familyname {
    my ($self) = @_;
    return $self->_localized_field('familyname');
}

sub nickname {
    my ($self) = @_;
    if ( defined $self->_localized_field('nickname') ) {
        return $self->_localized_field('nickname');
    }
    return $self->_localized_field('surname');
}

sub birthday {
    my ($self) = @_;
    return $self->_localized_field('birthday');
}

sub voiced_by {
    my ($self) = @_;
    return $self->_localized_field('voiced_by');
}

sub _localized_field {
    my ($self, $name) = @_;
    if ( exists $self->localizer->{ $self->locale } ) {
        my $localizer = $self->localizer->{ $self->locale };
        return $localizer->maketext($name);
    }
    return $self->{$name};
}

sub BUILD {
    my ($self, $args) = @_;

    my $ds = Data::Section::Simple->new( ref $self );
    my $sections = $ds->get_data_section();
    if ( exists $sections->{common} ) {
        my $common = YAML::Tiny->read_string( delete $sections->{common} );
        $self->{common} = $common;
    }

    for my $section_name ( keys %{ $sections || {} } ) {
        my $yaml = YAML::Tiny->read_string($sections->{$section_name});

        my $localizer = Localizer::Resource->new(
            dictionary => $yaml->[0],
            format     => Localizer::Style::Gettext->new(),
        );
        $self->{localizer}->{$section_name} = $localizer;
    }
}



__PACKAGE__->meta->make_immutable();

1;
