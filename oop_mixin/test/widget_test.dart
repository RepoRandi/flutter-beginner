import 'burung.dart';
import 'hewan.dart';
import 'ikan.dart';
import 'kucing.dart';
import 'macan.dart';

void main() {
  Kucing hewan1 = Kucing(jumlahKaki: 4, berat: 7, kecepatanLari: 5);

  print("Hewan 1: ${hewan1.nama} - ${hewan1.kategori}");
  print("Berat Hewan 1: ${hewan1.berat} kg");
  print("Jumlah Kaki Hewan 1: ${hewan1.jumlahKaki} kaki");

  hewan1.makan = 5;

  print('Setalah Makan 5kg:');

  print("Berat Hewan 1: ${hewan1.berat} kg");

  print("\n================================================\n");

  Burung hewan2 = Burung(jumlahKaki: 2, berat: 1);

  print("Hewan 2: ${hewan2.nama} - ${hewan2.kategori}");
  print("Berat Hewan 2: ${hewan2.berat} kg");
  print("Jumlah Kaki Hewan 2: ${hewan2.jumlahKaki} kaki");

  hewan2.makan = 15;

  print('Setalah Makan 2 kg:');

  print("Berat Hewan 2: ${hewan2.berat} kg");

  print("\n================================================\n");

  Ikan hewan3 = Ikan(berat: 1);

  print("Hewan 3: ${hewan3.nama} - ${hewan3.kategori}");
  print("Berat Hewan 3: ${hewan3.berat} kg");

  hewan3.makan = 1;

  print('Setalah Makan 1 kg:');

  print("Berat Hewan 3: ${hewan3.berat} kg");

  print("\n================================================\n");

  Macan hewan4 = Macan(berat: 100, jumlahKaki: 4);

  hewan4.kecepatanLari = 10;
  hewan4.kecepatanRenang = 5;

  print("Hewan 4: ${hewan4.nama} - ${hewan4.kategori}");
  print("Berat Hewan 4: ${hewan4.berat} kg");
  print("Jumlah kaki Hewan 4: ${hewan4.jumlahKaki} kaki");
  print("Kecepatan Lari Hewan 4: ${hewan4.lari} km/jam");
  print("Kecepatan Renang Hewan 4: ${hewan4.renang} km/jam");

  hewan4.makan = 1;

  print('Setalah Makan 1 kg:');

  print("Berat Hewan 3: ${hewan4.berat} kg");
}
