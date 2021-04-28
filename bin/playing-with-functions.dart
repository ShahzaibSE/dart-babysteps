void main() {
  String message = greeter();
  print('Message: $message');
  printDigit(2);
  print('');
  print('Running calculator');
  print(calculator(3, 4.5, '*'));
  print('Calling an arrow function');
  print(add2Numbers(3.4, 2.3));
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

// Arrow function.
num add2Numbers(num num1, num num2) => num1 + num2;
// Function with optional parameters.
void welcomeBot(String message, [String date = '2021-04-28', String time = '9:00']) => message;
void messenger(String message, [String recipent]) => message; // Optional parameter with no default value.