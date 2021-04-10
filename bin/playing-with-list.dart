void main() {
  var list = [1, 'Apple', 3, 4, 'Peach'];
  print(list);
  // Checker.
  print(list.whereType<int>());
  print(list.whereType<String>());
  print('Data type: ${list.runtimeType}');
  // Basic list operations.
  print('');
  print('Getting first element of a list: ${list.first}');
  print('Getting last element of a list: ${list.last}');
  print('Getting last element of a list differently: ${list.elementAt(list.length-1)}');
  print('Getting element at a specific position in the list: ${list.elementAt(2)}');
  print('Getting index of element: ${list.indexOf("Apple")}');
  // Updating list.
  list.replaceRange(1, list.length-1, [10,20,30,40,50]);
  print('Updating list: $list');
  print('');
  var list2 = [1, 2, 3, 4, 5];
  print(list2);
  print('Sublist from list2');
  print(list2.sublist(1,4));
  list2.replaceRange(1, 4, [6, 7]);
  list2.join(', '); // '1, 6, 7, 5'
  print(list2);
  // Let's try to get a list out of a list.
  print('');
  var myList= [1,2,3,4,5];
  print('Sublist from a list.');
  print(myList.sublist(1,3)); // [2,3]
  //
  // Sort a list.
  var myList2 = [10, 1, 2, 13, 20, 30, 25];
  print('Print sorted list');
  print(myList2);
  myList2.sort();
  print(myList2);
  // Check if list is empty or not.
  if(list.isNotEmpty){
    print('List is not empty');
  }
  //
  print('');
  var emptyList = [];
  if(emptyList.isEmpty){
    print('List is empty');
  }
  //
  print('');
  var sampleList = [1,2];
  sampleList.clear();
  if(sampleList.isEmpty){
    print('List has been cleared.');
  }
  // Adding items in a list.
  sampleList..add(4)..add(5)..add(6);
  print('Adding item after clearing list');
  print(sampleList);
  sampleList.insert(3, 7);
  print('After inserting element using insert method');
  print(sampleList);
  print('Reversing list');
  var reversed_sampleList = List.of(sampleList.reversed);
  print(reversed_sampleList);
  //
  print('');
  var groceryList = [];
  groceryList.insertAll(0, ["Milk", "Eggs", "Potatoes", "Onions", "Cooking Oil"]);
  print('Grocery list');
  print(groceryList);
  groceryList.remove("Onions");
  print('After removing Onions from list');
  print(groceryList);
  groceryList.removeRange(2, groceryList.length-1);
  print('Removed few items from the list');
  print(groceryList);
  //
  // Natural numbers list.
  var natural_numbers = [1,2,3,4,5,6,7,8,9,10];
  print('Natural Numbers');
  print(natural_numbers);
  natural_numbers.removeWhere((element) => element>=8);
  print('After using removeWhere on natural_numbers list');
  print(natural_numbers);
  // Resetting natural numbers list.
  natural_numbers = [1,2,3,4,5,6,7,8,9,10];
  print('Natural Numbers');
  print(natural_numbers);
  print('Using retainwhere on natural numbers list');
  natural_numbers.retainWhere((element) => element>=8);
  print(natural_numbers);
  // Using Spread operator.
  print('');
  var snacks_and_gorcery_list = [];
  snacks_and_gorcery_list.addAll(["Lays", "Cola", "Potato Chips", ...groceryList]);
  print("All snacks and grocery list");
  // Adding an element in the list.
  snacks_and_gorcery_list[snacks_and_gorcery_list.length-1] = "Flour";
  print(snacks_and_gorcery_list);
  print('');
  print('Using ForEach');
  snacks_and_gorcery_list.forEach((element) {
    print(element);
  });
}