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
  Building({required Door, required Floor}){
    this.door = Door;
    this.floors = Floor;
  }
}



void main(){
  final Building ajnai_101 = Building(Door: 2, Floor: 3);

}