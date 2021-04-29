void main() {
  var greeter = Greeter('Nightbot', '2');
  // var greeter = new Greeter('Nightbot', '2'); //Both works.
  greeter.getGreeter();
  print(greeter.sendMessage('Hi, how are you?'));
}

class Greeter {
  String name;
  String age;

  // Long form constructor.
  Greeter(String name, String age) {
    this.name = name;
    this.age = age;
  }
  // Short form constructor.
  // Greeter(String name, String age);

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