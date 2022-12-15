import 'hewan.dart';
import 'mixin/lari.dart';
import 'mixin/renang.dart';

class Macan extends Hewan with Lari, Renang {
  int jumlahKaki;

  Macan({required this.jumlahKaki, required int berat})
      : super(nama: 'Macan', kategori: 'Mamalia', berat: berat);
}
