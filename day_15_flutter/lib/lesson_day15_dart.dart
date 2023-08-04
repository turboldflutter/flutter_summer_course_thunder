void main() {
  String blackCat = 'BlackCat';
  if (blackCat == 'blackCat') {
    print('Yes its is BlackcCat');
  } else {
    print('No its not BlackCat');
  }

  blackCat == 'blackCat'
      ? print('Yes its is BlackcCat')
      : print('No its not BlackCat');

  int a = 5 > 6 ? 6 : 5;
  int b = 0;
  if (5 > 6) {
    b = 6;
  } else {
    b = 5;
  }
}
