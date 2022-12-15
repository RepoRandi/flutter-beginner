import 'hewan.dart';
import 'mixin/renang.dart';

class Ikan extends Hewan with Renang {
  Ikan({required int berat})
      : super(nama: 'Ikan', kategori: 'Air', berat: berat);
}
