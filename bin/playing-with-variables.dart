void main(){
  // Type Inferencing.
  var num1 = 1;
  var num2 = 2;
  var num3 = 3;
  // Strongly type variable.
  int age = 27;
  double temperature = 11.2;
  //  The num type is an inherited data type of the int and double types.
  num $age = 23;
  num $temperature = 11.5;
  //
  print($age);
  print(''); // Can't add print statement without passing argument.

  // ------ String ------ //
  String name = "Shahzaib";
  String street_name = "Baba Tajuddin Road";
  String email = "shahzaibnoor40@gmail.com";
  String date_of_birth = "24/Aug/1993";

  print("Name: ${name}");
  print("Street Name: ${street_name}");
  print("Email: ${email}");
  print("Date of Birth: ${date_of_birth}");

  // Boolean.
  bool _status = true;

  bool $status = false;
  // =======================
  bool calculation = 12>5;
  print("");
  print("Status: ${_status}");
  print("Status: ${$status}");
  print(calculation);
  // Arthematic Operation.
  print('');
  print('Arthematic Operations');
  print('Addition: ${10+2}');
  print('Divide, returning an integer result: ${5~/2}');
}
