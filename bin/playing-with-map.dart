main() {
  // dishes and calories.
  var pastries = {'ice_pastries': 100, 'blueberry': 90};
  Map<String,int> deserts = {'custard': 200, 'cheese_cake': 500, ...?pastries}; // Using spread operator to include pairs of pastries dictionary
  print('Sweet Products');
  print(deserts);
  //
  // Checking if Map is empty or not.
  if (deserts.isEmpty){
    print('');
    print('There are no deserts.');
  }
  //
  if(deserts.isNotEmpty){
    print('');
    print('There are desert items in stock');
  }
  //
  var emptyDict = {};
  if(emptyDict.isEmpty) {
    print('');
    print('This dictionary is empty');
  }
  // Map Size.
  print('Map Size');
  print(pastries.length);
  //
  var fruits = {1: 'Apple', 2: 'Grapes', 3: 'Strawberry'};
  print('Fruits');
  print(fruits);
  print('');
  print('After adding fruit entries');
  fruits.addAll({4:'Mangoes', 5: 'Pinapple'});
  // Another method.
  fruits[6] = 'Blueberry';
  // Using putIfabsent method.
  fruits.putIfAbsent(5, () => "Pomegranate"); // This doesn't work because key exist.
  fruits.putIfAbsent(7, () => "Pomegranate");
  print(fruits);
  //
  print('');
  print('Another fruit list');
  var fruit = {1: 'Apple', 2: 'Orange'};
  fruit[3] = 'Banana';
  print(fruit);
  var val = fruit.putIfAbsent(3, () => 'Mango');
  print(fruit);
  print(val);
  var val2 = fruit.putIfAbsent(4, () => 'Cherry');
  print(fruit);
  print(val2);
}