int calculate() {
  return 6 * 7;
}

class Hool {
  int x = -8;
  int y = 44;
  String name = 'hool';
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void sayHello() {
    print('Hello');
  }

  void sayMyName() {
    print(this.name);
  }

  void sayMyLocation() {
    print('i m at position x: $x, y: $y ');
  }

  void goToXandY(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print('I’m at south east $direction');
    } else if (91 <= this.direction && this.direction <= 180) {
      print('I’m at south east $direction');
    } else if (181 <= this.direction && this.direction <= 270) {
      print('I’m at north west  $direction');
    } else if (271 <= this.direction && this.direction <= 360) {
      print('I’m at north west  $direction');
    }
  }
  void showMyNameXTimes(int x){
    for (int i = 0, i < x, i++);
    print(a);
  }
}

class Sav {
  int x = -16;
  int y = 88;
  String name = 'sav';
  bool isShow = true;
  int size = 80;
  int direction = 180;
  void sayHello() {
    print('Hello');
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void sayMyLocation() {
    print('i m at position x: $x, y: $y ');
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print('I’m at south east $direction');
    }
    if (91 <= this.direction && this.direction <= 180) {
      print('I’m at south east $direction');
    }
    if (181 <= this.direction && this.direction <= 270) {
      print('I’m at north west  $direction');
    }
    if (271 <= this.direction && this.direction <= 360) {
      print('I’m at north west  $direction');
    }
  }
}

class Alim {
  int x = -24;
  int y = 150;
  String name = 'alim';
  bool isShow = true;
  int size = 120;
  int direction = 33;
  void sayHello() {
    print('Hello');
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void sayMyLocation() {
    print('i m at position x: $x, y: $y ');
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print('I’m at south east $direction');
    }
    if (91 <= this.direction && this.direction <= 180) {
      print('I’m at south east $direction');
    }
    if (181 <= this.direction && this.direction <= 270) {
      print('I’m at north west  $direction');
    }
    if (271 <= this.direction && this.direction <= 360) {
      print('I’m at north west  $direction');
    }
  }
}

void main() {
  print('day_07');
  print(calculate());
  final hool = Hool();
  print(hool);
  hool.sayHello();
  hool.sayMyLocation();
  hool.goToXandY(10, 40);
  hool.sayMyLocation();
  hool.move(100);
  hool.sayMyLocation();
  hool.move(-40);
  hool.sayMyLocation();
  hool.changeYby(40);
  hool.sayMyLocation();
  hool.changeYby(-40);
  hool.sayMyLocation();
  hool.getDirection();
  final alim = Alim();
  print(alim);
  alim.sayHello();
  alim.sayMyLocation();
  alim.move(50);
  alim.sayMyLocation();
  alim.move(40);
  alim.sayMyLocation();
  alim.changeYby(40);
  alim.sayMyLocation();
  alim.changeYby(-40);
  alim.sayMyLocation();
  alim.getDirection();
  final sav = Sav();
  print(sav);
  sav.sayHello();
  sav.sayMyLocation();
  sav.move(40);
  sav.sayMyLocation();
  sav.move(30);
  sav.sayMyLocation();
  sav.changeYby(100);
  sav.sayMyLocation();
  sav.changeYby(50);
  sav.sayMyLocation();
  sav.getDirection();
}
