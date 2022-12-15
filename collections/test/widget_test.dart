void main() {
  List car = ['bmw', 'audi', 'toyota', 'kia', 'ford', 'honda', 'mercy', 'vw'];

  print(car[0]);

  int i = 1;
  for (String myCar in car) {
    print('myCar: ${i++} - $myCar');
  }

  Set games = {'mario', 'zelda', 'pokemon'};
  Set games2 = {'mario', 'zelda', 'pokemon', 'batman'};

  print(games.intersection(games2));

  Map values = {
    'math': ['100', '200', '300'],
    'science': ['400', '500', '600'],
    'english': ['700', '800', '900'],
  };

  print(values['math'][0]);

  print('================================================================');

  List number = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  List numberCopy = [...number, 10];

  print(numberCopy[9]);

  print('================================================================');

  Set number2 = {1, 2, 3, 4, 5, 6, 7, 8, 9};

  Set numberCopy2 = {...number2, 10};

  print(numberCopy2.elementAt(9));
}
