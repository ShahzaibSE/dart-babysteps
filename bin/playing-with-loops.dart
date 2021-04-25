import "dart:io";
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
  num table_number = num.parse(stdin.readLineSync());
  do{
    num product = do_while_count * table_number;
    print('$table_number x $do_while_count =  $product');
    do_while_count++;
  }while(do_while_count<=10);
}