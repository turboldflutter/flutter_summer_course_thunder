
class Sprite{
  int x = 0;
  int y = 0;

  Sprite({required int x, required int y}){
    this.x = x;
    this.y = y;
  }
}

class CatSprite extends Sprite {
  CatSprite({required super.x,required super.y });
}

class DogSprite extends Sprite {
  DogSprite({required super.x, required super.y});

}

class Animal{
  String name = '';
  Animal({required String name}){
    this.name = name;
  }
  void sayRoar(){
    print('animal Roaring');
  }
}
class Pig extends Animal{
  String name = '';
  Pig({required super.name});

  @override
  void sayRoar(){
    print('Pig Roaring....');
  }
}
class Cat extends Animal{
  String name = '';
  Cat({required super.name});

  @override
  void sayRoar(){
    print('Cat Roaring....');
  }
}
class Horse extends Animal{
  String name = '';
  Horse({required super.name});

  @override
  void sayRoar(){
    print('Horse Roaring....');
  }
}

void main(){
  Sprite sprite = Sprite(x: 10, y: 20);
  CatSprite cat = CatSprite(x: 40, y: 40);
  DogSprite dog = DogSprite(x: 40, y: 40);

  Pig pig = Pig(name: 'Gahai');
  pig.sayRoar();
  Cat kitty = Cat(name: 'Kitty');
  kitty.sayRoar();
  Horse heer = Horse(name: 'Heer');
  heer.sayRoar();
}