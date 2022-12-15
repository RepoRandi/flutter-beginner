mixin Terbang {
  int _kecepatanTerbang = 0;

  set kecepatanLari(int kecepatanTerbang) {
    _kecepatanTerbang = kecepatanTerbang;
  }

  get lari => _kecepatanTerbang;
}
