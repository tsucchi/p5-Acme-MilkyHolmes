package Acme::MilkyHolmes::Character::CordeliaGlauca;
use Mouse;
extends 'Acme::MilkyHolmes::Group::MilkyHolmes';

use utf8;

__PACKAGE__->meta->make_immutable();

1;

__DATA__

@@ common
color: blue

@@ en
surname: Cordelia
familyname: Glauca
birthday: December 19
voiced_by: Izumi Kitta
toys: Hyper Sensitive

@@ ja
surname: コーデリア
familyname: グラウカ
birthday: 12/19
voiced_by: 橘田 いずみ
toys: ハイパーセンシティブ
name_separator: ・
