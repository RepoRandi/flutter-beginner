void main() {
  var name = 'Sis';
  var age = 20;
  var number = [1, 2, 3];
  var person = ['eko', 'andre', 'rock', 'michael']
    ..add('eko')
    ..add('andre')
    ..add('rock')
    ..add('michael');

  print('Hello, $name ($age) years old');

  for (var element in person) {
    print(element);
  }
}
