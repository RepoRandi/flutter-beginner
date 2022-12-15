void main() {
  String name = 'Randi Maulana Akbar';
  num age = 20;
  bool isMale = true;
  List<String> favoriteColor = ['red', 'blue', 'green', 'yellow', 'pink'];
  Map kendaraan = {
    'mobil': 'Avanza',
    'motor': 'N-max',
    'sepeda': 'Polygon',
  };

  String nameToLowerCase = name.toLowerCase();
  String nameToUpperCase = name.toUpperCase();

  print('Name: $name');
  print('Name to lowercase: $nameToLowerCase');
  print('Name to uppercase: $nameToUpperCase');
  print(name.split(' ')[0]);

  print('$name is a male ? $isMale');

  print('$name your age is $age years old');

  print('Color favorite $name is $favoriteColor ');
  print(favoriteColor[1]);

  print('Semua kendaraan: $kendaraan');
  print('Nama motor: ${kendaraan["motor"]}');
}
