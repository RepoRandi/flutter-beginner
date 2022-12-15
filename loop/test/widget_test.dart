void main() {
  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

  // for (int y = 100; y >= 10; y--) {
  //   print(y);
  // }

  // int i = 1;
  // do {
  //   print(i);
  //   i++;
  // } while (i <= 10);

  List<String> car = ['BMW', 'Audi', 'Mercedes', 'Toyota', 'Honda'];

  for (int i = 0; i < car.length; i++) {
    print(car[i]);
  }

  car.forEach((element) => print(element));

  for (String carName in car) {
    print('Car : $carName');
  }
}
