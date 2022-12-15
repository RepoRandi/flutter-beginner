import 'hewan.dart';

class Ikan extends Hewan {
  int? kecepatanRenang;

  Ikan({this.kecepatanRenang, required int berat})
      : super(nama: 'Ikan', kategori: 'Air', berat: berat);
}
