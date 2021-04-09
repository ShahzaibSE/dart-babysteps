void main() {
  // Simple if else block.
  if (true) {
    print('Simple condition with default bool value true');
  }
  print('');
  // Using logical characters.
  if (4 % 2 == 0 && 5 % 2 != 0) {
    print('4 is divisible by 2 however 5 is not.');
  }
  print('');
  // If else block.
  if (4 % 2 == 0 && 5 % 2 == 0) {
    print('4 is divisible by 2 however 5 is not and that is right.');
  }else {
    print('First condition is true but second condition is false because 5 is not divisible by 2.');
  }
}

// main() {
//  print('Main function without return type described, it still works.');
// }