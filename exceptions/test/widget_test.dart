void main() {
  try {
    int age = int.parse('abc');
    print(age);
  } on FormatException {
    print('Bad Format');
  } catch (e) {
    print(e);
  }
}
