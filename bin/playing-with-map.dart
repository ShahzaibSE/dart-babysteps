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
  // Remove Methods.
  Map words = {
      1: 'sky',
      2: 'fly',
      3: 'ribbon',
      4: 'falcon',
      5: 'rock',
      6: 'ocean',
      7: 'cloud',
      8: 'fangs'
  };
  print('Words');
  print(words);
  words.remove(1);
  print('After deleting first key');
  print(words);
  words.removeWhere((key, value) => key==2);
  print('After using removeWhere method');
  print(words);
  words.removeWhere((key, value) => value.startsWith('f'));
  print(words);
  print('Clearing entire map');
  words.clear();
  print(words);
  // Merging maps.
  print('Merging Maps');
  var f1 = {1: 'Apple', 2: 'Orange'};
  var f2 = {3: 'Banana'};
  var f3 = {4: 'Mango'};
  var fruitList = {}..addAll(f1)..addAll(f2)..addAll(f3);
  print(fruit);
  var fruit3 = {...f1, ...f2, ...f3};
  print(fruit3);
  // Making a map using iterables such as list.
  var letters = ['I', 'II', 'V', 'X', 'L'];
  var numbers = [1, 2, 5, 10, 50];
  var data = Map.fromIterables(letters, numbers);
  print('Map from lists');
  print(data);
  // Checking if key or value exists.
  var myMap = {1: 'Apple', 2: 'Orange', 3: 'Banana'};
  print(myMap.containsKey(1));
  print(myMap.containsKey(3));
  print(myMap.containsValue('Apple'));
  print(myMap.containsValue('Cherry'));
  // Iterating over map.
  fruitList.forEach((key, value) {
    print('$key:$value');
  });
}