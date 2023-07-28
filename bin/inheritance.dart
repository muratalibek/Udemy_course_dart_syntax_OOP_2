
class Person{
  String name = "", lastName = "", nationality = "";
  int age = 0;

  void showName(){
    print(name);
  }

  //Override method
  void sayHello() => print("Hello!");
}


class Bonni extends Person{
  String profession = "";
  void showProfession() => print(profession);
  // Here I am overriding method
  @override
  void sayHello() => print("Ola!");
}

class Murat extends Person{
  bool playGuitar = true;
  void play() => print(playGuitar);

  @override
  void sayHello() => print("Salem!");
}

class Location{
  //-----------------------------------
  //INHERITING CLASSES WITH CONSTRUCTOR
  num lat, lng;
  Location(this.lat, this.lng); // Constructor

  //named constructor
  Location.create(this.lat, this.lng);// Here we named it as a "create"
}

class EvaluatedLocation extends Location{
  num elevation;
  EvaluatedLocation(num lat, num lng, this.elevation):super.create(lat, lng);// call Location() constructor

  @override // Просто написал toString и он автоматом появился.
  String toString() { //Поскольку он наследуется с Location class, он может использовать его атрибуты/свойства
    // TODO: implement toString
    var result = "$lat $lng $elevation";//атрибуты супер класса и текущего
    return result;// возращает значение объекта elevated и можно принтидь print(elevated);
  }
}

void main(List<String> arguments) {
  var elevated = EvaluatedLocation(23.89, -253.2, 90);
  print("Location = ${elevated.lat}, ${elevated.lng}, ${elevated.elevation}");
  print("");
  print(elevated);

  var bonni = Bonni();
  bonni.name = "Bonni";
  bonni.profession = "Ballerina";


  //The toString() method override
  Object object = Object();
  object.toString();
  print(object);


  String sirName = "Bond";
  print(sirName.toString());

  //-----------------------------------------
  bonni.showName();

  bonni.showProfession();
  bonni.sayHello();
  print("");

  var murat = Murat();
  murat.playGuitar = true;
  murat.name = "Murat";
  murat.lastName = "Ali";
  murat.age = 22;

  murat.showName();
  murat.play();
  murat.sayHello();

}
