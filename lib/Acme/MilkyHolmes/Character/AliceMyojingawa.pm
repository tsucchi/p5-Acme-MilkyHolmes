package Acme::MilkyHolmes::Character::AliceMyojingawa;
use Mouse;
extends 'Acme::MilkyHolmes::Group::MilkyHolmes';

use utf8;

__PACKAGE__->meta->make_immutable();

1;

__DATA__

@@ common
---
color: white
color_enable: 0

@@ en
---
firstname: Alice
familyname: Myojingawa
birthday:
voiced_by: Ayasa Itoh
toys: Bound

@@ ja
---
firstname: アリス
familyname: 明神川
birthday:
voiced_by: 伊藤 彩沙
toys: バウンド
