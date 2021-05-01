void main() {
  var biodata = {};
  biodata.addAll({'name':'shahzaib','rollno': 'aic002527', 'email':'shahzaibnoor40@gmail.com'});
  print('Bio Data after adding data using addAll method: $biodata');
  // Putting if absent.
  biodata.putIfAbsent('city', () => 'Istanbul');
  print('Putting missing details using putIfAbsent: $biodata');
}