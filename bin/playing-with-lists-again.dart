import 'dart:math';
var random = Random();
void main() {
  var list1 = []; // another way to write this something var list1 = <dynamic>[]; no need to use dynamic keyword
                  //  type is 'dynamic' by default when we use var keyword.
  list1.addAll([10,20,30,40,50,60]);
  print('List #1: $list1');
  list1.replaceRange(1, 4, [70,80,90,100,101]);
  print('List #1 updated: $list1');
  // Delete elements from list.
  list1.removeRange(4, 6);
  print('List #1 after deletion: $list1');
  // Copy a list.
  var list1_copy = [];
  list1_copy.addAll(list1);
  print('List #1 (Copy): $list1_copy');
  // Getting an element.
  print('Getting element from list');
  print(list1.elementAt(3));
  var firstElement = list1.first;
  print('First element: $firstElement');
  var lastElement = list1.last;
  print('First element: $lastElement');
  // Generating random list of numbers.
  var list2 = [];
  for(num i=0; i<10; i++){
    list2.add(random.nextInt(50));
  }
  print('List #2 of random numbers: $list2');
  list2.sort();
  print('List #2 of random numbers(After sorting): $list2');
  var reversed_list1 = List.of(list1.reversed);
  print('Reversed list #1: $reversed_list1');
  print('List #1 before Insertion: $list1');
  list1.insert(1, 20);
  print(list1.length);
  print('List #1 after Insertion: $list1');
  list1.insertAll(list1.length-1, [100,110,120]);
  print('List #1 after using insertAll method: $list1');
  // Remove an element.
  list1.remove(60);
  print('List #1 after deleting one element: $list1');
  // Using removeWhere.
  list1.removeWhere((element) => element>=100);
  print('List #1 after deleting elements using removeWhere: $list1');
  // 
  var list3 = [];
  for(num i=0; i<10; i++){
    list3.add(random.nextInt(100));
  }
  print('List #3: $list3');
  list3.retainWhere((element) => element % 2 == 0);
  print('Keeping only even numbers in list #3: $list3');

  var merged_list = [...list1, ...list2, ...list3];
  print('Merged list: $merged_list');
}