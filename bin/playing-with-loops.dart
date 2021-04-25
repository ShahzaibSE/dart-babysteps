import 'dart:io';
import 'dart:math';
//
void main() {
  // Generating simple sequence of numbers.
  for (num i=1;i<=10;i++){
    print('Number # $i');
  }
  //
  // Do-while loop.
  num do_while_count = 1;
  print('Enter your Table number:');
  // num table_number = num.parse(stdin.readLineSync()); // Taking user input in the console.
  num table_number = 2;
  do{
    num product = do_while_count * table_number;
    print('$table_number x $do_while_count =  $product');
    do_while_count++;
  }while(do_while_count<=10);
  print('');
  // 
  // While loop.
  num while_counter = 2;
  print('Generate numbers');
  var random = Random();
  while(while_counter<10){
    print(random.nextInt(50));
    while_counter++;
  }
  // For loop.
}