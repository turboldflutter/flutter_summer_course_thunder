

class Door {
  int numberOfDoors = 0;
  Door({required door}){
    this.numberOfDoors = door;
  }
}

class Floor {
  int numberOfFloors = 0;
  Floor({required floors}){
    this.numberOfFloors = floors;
  }
}

class Building {
  String name = '';
  Floor floors = Floor(floors: 3);
  Door door = Door(door: 2);
  Building({required Door doors, required Floor floors}){
    this.door = doors;
    this.floors = floors;
  }
}
class Wheel {
  int numberOfWheel = 0;
  Wheel({required wheel}){
    this.numberOfWheel = wheel;
  }
  void showInfo(){
    print('Weel number: $numberOfWheel');
  }
}
class Engine {
  int numberOfEngine = 0;
  Engine({required engine}){
    this.numberOfEngine = engine;
  }
  void showInfo(){
    print('Engine number: $numberOfEngine');
  }
}
class CarBody {
  int numberOfBody = 0;
  CarBody({required body}){
    this.numberOfBody = body;
  }
  void showInfo(){
    print('Body number: $numberOfBody');
  }
}
class Car{
  String name = '';
  CarBody body = CarBody(body: 1);
  Wheel wheel = Wheel(wheel: 4);
  Engine engine = Engine(engine: 2);
  Car({required ner, required buheeg, required dugui, required hudulguur}){
    this.name = ner;
    this.body = buheeg;
    this.engine = hudulguur;
    this.wheel = dugui;
  }
  void showInfo(){
    print(name);
  }
}
void main(){
  final Building ajnai_101 = Building(Door: 2, Floor: 3);
  final Car bugati = Car(ner: 'Bugati', buheeg: 1, dugui: 4, hudulguur: 2);
  bugati.showInfo();
}