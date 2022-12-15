void main() {
  String name = 'Bob';

  if (name == 'Randy') {
    print('Hello, nama kamu Randy');
  } else if (name == 'Bob') {
    print('Hello, nama kamu Bob');
  } else {
    print('Hello, nama kamu siapa ?');
  }

  switch (name) {
    case 'Randy':
      print('Hello, nama kamu Randy');
      break;

    case 'Bob':
      print('Hello, nama kamu Bobi');
      break;

    case 'Ronald':
      print('Hello, nama kamu Ronald');
      break;

    default:
      print('Hello, nama kamu siapa ?');
  }
}
