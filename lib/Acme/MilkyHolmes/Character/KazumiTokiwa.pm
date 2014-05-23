package Acme::MilkyHolmes::Character::KazumiTokiwa;
use Mouse;
extends 'Acme::MilkyHolmes::Group::MilkyHolmes';

use utf8;

__PACKAGE__->meta->make_immutable();

1;

__DATA__

@@ common
---
color: black
color_enable: 0

@@ en
---
name: Kazumi Tokiwa
surname: Kazumi
familyname: Tokiwa
birthday:
voiced_by: Aimi
toys: Arrow

@@ ja
---
name: 常盤 カズミ
surname: カズミ
familyname: 常盤
birthday:
voiced_by: 愛美
toys: アロー
