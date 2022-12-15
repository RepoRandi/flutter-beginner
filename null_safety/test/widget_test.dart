void main() {
  String? name = getName();
  // print(name?.length ?? 0);

  if (name?.length == null) {
    print('name is null');
  } else {
    print('name is not null');
    print('$name terdiri dari ${name!.length} karakter');
  }
}

String? getName() {
  return 'Fikri';
}
