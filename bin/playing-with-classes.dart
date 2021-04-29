void main() {
  var greeter = Greeter('Nightbot', '2');
  var shape = Shape();
   var list1 = ["bilal",1,true,"ali","umair"];
  list1.replaceRange(2,4,["ahmed",false]);
  // var greeter = new Greeter('Nightbot', '2'); //Both works.
  greeter.getGreeter();
  print(greeter.sendMessage('Hi, how are you?'));
  print(list1);
}

// Implementing abstraction.
abstract class GreeterAbstract {
  // We can put properties.
  void getGreeter();
}

class Greeter extends GreeterAbstract {
  String name;
  String age;

  // Long form constructor.
  Greeter(String name, String age) {
    this.name = name;
    this.age = age;
  }
  // Short form constructor.
  // Greeter(String name, String age);

  @override
  void getGreeter(){
   print(name);
   print(age);
  }

  String sendMessage(String message){
    // var sender = this.name;
    var sender = this.name;
    return '$sender : $message';
  }
}

// Inheritance.
class Shape {
  num width;
  num length;
}

class ShapeMetada {
   String creator;
   String createdAt;
   String platform;
}

class Square extends Shape{
  dynamic createSquare(){
    return width * width;
  }
}

class Rectangle extends Shape {
  dynamic createRectangle(){
    return width * length;
  }
}