class Shape {
  int length = 0;
  int width = 0;
  String name = '';
  Shape({required int length, required int width, required String name}) {
    this.name = name;
    this.length = length;
    this.width = width;
  }
  void showInfo() {
    print('My Info is ${this.name} with ${this.length} and ${this.length}');
  }
}

class Dinosaur {
  String name = '';
  String color = '';
  int weight = 0;
  Dinosaur({required String name, required String color, required int weight}) {
    this.name = name;
    this.color = color;
    this.weight = weight;
  }
  String shoutSize() {
    return 'Weight: ${this.weight}';
  }

  String showName() {
    return 'Name: ${this.name}';
  }

  String showColor() {
    return 'Color: ${this.color}';
  }
}

class Family {
  Human father = Human(name: '', age: 0, gender: '');
  Human mother = Human(name: '', age: 0, gender: '');
  Human brother = Human(name: '', age: 0, gender: '');
  Human sister = Human(name: '', age: 0, gender: '');
  Family(
      {required Human father,
      required Human mother,
      required Human brother,
      required Human sister}) {
    this.father = father;
    this.mother = mother;
    this.brother = brother;
    this.sister = sister;
  }
  String sayFamilyMember() {
    return 'My family has 4 members, my father’s name is ${this.father.name}. My mother’s name is ${this.mother.name}.  my brother’s name is ${this.brother.name}. , my sister’s name is ${this.sister.name}.';
  }

  String sayFamilyAge() {
    return '${this.father.name} is age: ${this.father.age}. ${this.mother.name} is age:${this.mother.age}.';
  }

  String sayFamilyGender() {
    return '${this.brother.name} is ${this.brother.gender}';
  }
}

class Human {
  String name = '';
  int age = 0;
  String gender = '';
  Human({required String name, required int age, required String gender}) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
  String getName() {
    return '$name';
  }

  int getAge() {
    return age;
  }

  String getGender() {
    return '$gender';
  }
}

Human father = Human(name: 'Batsukh', age: 66, gender: 'man');
Human mother = Human(name: 'Saranchimeg', age: 68, gender: 'women');
Human brother = Human(name: 'Turmunkh', age: 32, gender: 'man');
Human sister = Human(name: 'Enkhmunkh', age: 21, gender: 'Women');

void main() {
  final Shape rectangle = Shape(length: 14, width: 20, name: 'Rectangle');
  rectangle.showInfo();
  final Shape quadrat = Shape(length: 20, width: 15, name: 'Quadrat');
  quadrat.showInfo();
  final Shape triangle = Shape(length: 20, width: 20, name: 'Triangle');
  triangle.showInfo();

  final Dinosaur thenosaurus =
      Dinosaur(name: 'Thenosaurus', color: 'Pink', weight: 30);
  print(thenosaurus.showName());
  print(thenosaurus.shoutSize());
  print(thenosaurus.showColor());

  final Dinosaur tyrannosaurus =
      Dinosaur(name: 'Tyrannosaurus', color: 'Brown', weight: 40);
  print(tyrannosaurus.showName());
  print(tyrannosaurus.shoutSize());
  print(tyrannosaurus.showColor());

  final Dinosaur triceratops =
      Dinosaur(name: 'Triceratops', color: 'Black', weight: 90);
  print(triceratops.showName());
  print(triceratops.shoutSize());
  print(triceratops.showColor());

  final Dinosaur spinosaurus =
      Dinosaur(name: 'Spinosaurus', color: 'Purple', weight: 60);
  print(spinosaurus.showName());
  print(spinosaurus.shoutSize());
  print(spinosaurus.showColor());

  final Family family =
      Family(father: father, mother: mother, brother: brother, sister: sister);
  print(family.sayFamilyMember());
  print(family.sayFamilyAge());
  print(family.sayFamilyGender());
}
