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
  // 
  print('');
  var list = [1, 1, 1, 2, 2, 3, 4, 5];
  list.sort();
  var popularNumbers = [];
  List<Map<dynamic, dynamic>> data = [];
  var maxOccurrence = 0;

  var i = 0;
  while (i < list.length) {
    var number = list[i];
    var occurrence = 1;
    for (int j = 0; j < list.length; j++) {
      if (j == i) {
        continue;
      }
      else if (number == list[j]) {
        occurrence++;
      }
    }
    list.removeWhere((it) => it == number);
    data.add({number: occurrence});
    if (maxOccurrence < occurrence) {
      maxOccurrence = occurrence;
    }
  }

  data.forEach((map) {
    if (map[map.keys.toList()[0]] == maxOccurrence) {
      popularNumbers.add(map.keys.toList()[0]);
    }
  });
  print('');
  print(data);
  print('Most popular elements: $popularNumbers');
  print('');
  //
  // Check number of occurances using for-loop.
  var numbers = <num>[1, 1, 1, 2, 2, 3, 4, 5]; 
  numbers.sort();
  List<Map<dynamic, dynamic>> occurances_data = [];
  int max_occurances = 0;
  List<num> popular_numbers = [];
  //
  for(num i=0;i<numbers.length;){
    var number = numbers[i];
    num occurance_counter = 1;
    for (num j=0; j<numbers.length; j++){
      if(j==i){
        continue;
      }
      if(number == numbers[j]){
        occurance_counter++;
      }
    }
    numbers.removeWhere((element) => element == number);
    occurances_data.add({number:occurance_counter});
    if(max_occurances < occurance_counter) {
      max_occurances = occurance_counter;
    }
  }
  occurances_data.forEach((map) { 
    if(map[map.keys.toList()[0]]==max_occurances){
      print('Max Occurance found');
      print('');
      popular_numbers.add(map.keys.toList()[0]);
    }
  });
  print(occurances_data);
  print('');
  print('Frequent numbers');
  print(popular_numbers);
  print('');
  //
  // For-in loop.
  print('Implementation of for for-in loop');  
  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }
}