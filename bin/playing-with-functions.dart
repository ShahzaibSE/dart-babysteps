void main() {
  String message = greeter();
  print('Message: $message');
  printDigit(2);
  print('');
  print('Running calculator');
  print(calculator(3, 4.5, '*'));
}

String greeter(){
  return 'Hello World';
}

void printDigit(num your_digit){
  print('Your number: $your_digit');
}

// Calculator function.
dynamic calculator(num num1, num num2, String operation) {
  switch(operation){
    case '+':
        return num1 + num2;
    case '-':
        return num1 - num2;
    case '*':
        return num1 * num2;
    case '/':
        return num1 / num2;
    default:
        return 'Please select a valid operation.';
  }
}