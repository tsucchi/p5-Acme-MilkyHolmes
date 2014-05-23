package Acme::MilkyHolmes::Character::SherlockShellingford;
use Mouse;
extends 'Acme::MilkyHolmes::Group::MilkyHolmes';

use utf8;

__PACKAGE__->meta->make_immutable();

1;

__DATA__

@@ common
color: pink

@@ en
---
name: Sherlock Shellingford
surname: Sherlock
familyname: Shellingford
nickname: Sheryl
birthday: March 31
voiced_by: Suzuko Mimori
toys: Psychokinesis

@@ ja
---
surname: シャーロック
familyname: シェリンフォード
nickname: シャロ
birthday: 3/31
voiced_by: 三森 すずこ
toys: サイコキネシス
name_separator: ・
