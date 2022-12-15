import 'pakaian.dart';

void main() {
  Pakaian pakaian1 = Pakaian(jenis: 'Baju', warna: 'Merah', ukuran: 'L');

  print(
      'Nama Pakaian : ${pakaian1.jenis}, warna : ${pakaian1.warna}, ukuran : ${pakaian1.ukuran}');

  print('Ganti ukuran');
  pakaian1.ukuran = 'XL';

  print(
      'Nama Pakaian : ${pakaian1.jenis}, warna : ${pakaian1.warna}, ukuran : ${pakaian1.ukuran}');

  print('=============================================');

  Pakaian pakaian2 = Pakaian(warna: 'Putih', jenis: 'Kemeja');

  print(
      'Nama Pakaian : ${pakaian2.jenis}, warna : ${pakaian2.warna}, ukuran  : ${pakaian2.ukuran != null ? pakaian2.ukuran : 'tidak ada ukuran'}');
}
