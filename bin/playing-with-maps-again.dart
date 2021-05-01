void main() {
  var biodata = {};
  biodata.addAll({'name':'shahzaib','rollno': 'aic002527', 'email':'shahzaibnoor40@gmail.com'});
  print('Bio Data after adding data using addAll method: $biodata');
  // Putting if absent.
  biodata.putIfAbsent('city', () => 'Istanbul');
  print('Putting missing details using putIfAbsent: $biodata');
  biodata.update('city', (value) => 'istanbul');
  print('Bio data after updating dictionary using update method: $biodata');
  //
  var words = {
    1: 'sky',
    2: 'fly',
    3: 'ribbon',
    4: 'falcon',
    5: 'rock',
    6: 'ocean',
    7: 'cloud'
  };
  words.remove(1);
  print(words);
  words.removeWhere((key, value) => value.startsWith('f'));
  print(words);
  // words.clear();
  // print(words);
  var f1 = {1: 'Apple', 2: 'Orange'};
  var f2 = {3: 'Banana'};
  var f3 = {4: 'Mango'};
  var fruit = {}..addAll(f1)..addAll(f2)..addAll(f3);
  print('Merging maps using cascade notation on map object via calling addAll method: $fruit');
  var fruit3 = {...f1, ...f2, ...f3};
  print('Merging maps in to a single one using spread operator: $fruit3');
  // From Iterables.
  var letters = ['I', 'II', 'V', 'X', 'L'];
  var numbers = [1, 2, 5, 10, 50];
  var data = Map.fromIterables(letters, numbers);
  print('Using fromIterables method creating a Map: $data');
  print(data.values);
  var xyz = "Flutter & Dart";
  print(xyz);
}