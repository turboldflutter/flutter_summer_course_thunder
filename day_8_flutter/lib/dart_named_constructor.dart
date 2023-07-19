class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
}

class NamedSprite {
  int x = 0;
  int y = 0;

  NamedSprite({required int xPosition, required int yPosition}) {
    this.x = xPosition;
    this.y = yPosition;
  }
}

class Animal {
  String name = '';
  String type = '';

  Animal({required String Ner, required String Nohoi}) {
    this.name = Ner;
    this.type = Nohoi;
  }
  void makeNoise() {
    print('$name animal roaring');
  }
}
class Human {
  int age = 0;
  String name = '';
  double height = 0;

  Human({required String Ner, required int Nas, required double Ondor}){
    this.name = Ner;
    this.age = Nas;
    this.height = Ondor;


  }
  void showMeasure(){
    print('My name is ${this.name} and I’m ${this.age} years old and I’m ${this.height} tall');
  }

}




void main() {
  final Sprite catSprite = Sprite(10, 20);
  final NamedSprite namedSprite = NamedSprite(xPosition: 20, yPosition: 10);
  final Animal sarmagchin = Animal(Ner: 'Banhar', Nohoi: 'Buldok');
  sarmagchin.makeNoise();
  final Human temuujin = Human(Ner: 'Temuujin', Nas: 18, Ondor: 1.68);
  temuujin.showMeasure();
}
