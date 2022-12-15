class Pakaian {
  String? jenis;
  String? warna;
  String? _ukuran;

  Pakaian({this.jenis, this.warna, String? ukuran}) {
    _ukuran = ukuran;
  }

  void gantiUkuran(String newUkuran) {
    _ukuran = newUkuran;
  }

  String? get ukuran {
    return _ukuran;
  }

  set ukuran(String? newUkuran) {
    _ukuran = newUkuran;
  }
}
