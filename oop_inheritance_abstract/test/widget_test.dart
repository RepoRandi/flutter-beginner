import 'burung.dart';
import 'hewan.dart';
import 'ikan.dart';
import 'kucing.dart';

void main() {
  Kucing hewan1 = Kucing(jumlahKaki: 4, berat: 7, kecepatanLari: 5);

  print("Hewan 1: ${hewan1.nama} - ${hewan1.kategori}");
  print("Berat Hewan 1: ${hewan1.berat} kg");
  print("Jumlah Kaki Hewan 1: ${hewan1.jumlahKaki} kaki");

  hewan1.makan = 5;

  print('Setalah Makan 5kg:');

  print("Berat Hewan 1: ${hewan1.berat} kg");

  print("\n================================================\n");

  Burung hewan2 = Burung(jumlahKaki: 2, berat: 1, kecepatanTerbang: 10);

  print("Hewan 2: ${hewan2.nama} - ${hewan2.kategori}");
  print("Berat Hewan 2: ${hewan2.berat} kg");
  print("Jumlah Kaki Hewan 2: ${hewan2.jumlahKaki} kaki");

  hewan2.makan = 15;

  print('Setalah Makan 2 kg:');

  print("Berat Hewan 2: ${hewan2.berat} kg");

  print("\n================================================\n");

  Ikan hewan3 = Ikan(berat: 1, kecepatanRenang: 6);

  print("Hewan 3: ${hewan3.nama} - ${hewan3.kategori}");
  print("Berat Hewan 3: ${hewan3.berat} kg");

  hewan3.makan = 1;

  print('Setalah Makan 1 kg:');

  print("Berat Hewan 3: ${hewan3.berat} kg");
}
