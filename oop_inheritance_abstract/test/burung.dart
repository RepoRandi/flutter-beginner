import 'hewan.dart';

class Burung extends Hewan {
  int jumlahKaki;
  int? kecepatanTerbang;

  Burung({required this.jumlahKaki, this.kecepatanTerbang, required int berat})
      : super(nama: 'Burung', kategori: 'Udara', berat: berat);
}
