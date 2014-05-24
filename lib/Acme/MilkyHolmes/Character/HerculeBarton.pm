package Acme::MilkyHolmes::Character::HerculeBarton;
use Mouse;
extends 'Acme::MilkyHolmes::Group::MilkyHolmes';

use utf8;

__PACKAGE__->meta->make_immutable();

1;

__DATA__
@@ common
color: green

@@ en
surname: Hercule
familyname: Barton
nickname: Elly
birthday: October 21
voiced_by: Mikoi Sasaki
toys: Tri-Ascend

@@ ja
surname: エルキュール
familyname: バートン
nickname: エリー
birthday: 10/21
voiced_by: 佐々木 未来
toys: トライアセンド
name_separator: ・
