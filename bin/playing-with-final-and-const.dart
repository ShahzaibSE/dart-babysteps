void main(){
  // There are two types of constant values, one is 'Compile-time Constant' and other one is 'Runtime Constant'.
  final hoursSinceMidnight = DateTime.now().hour;
  print('Hours before midnight: $hoursSinceMidnight'); 
  // const hoursSinceMidnight_with_const = DateTime.now().hour; // We'll get error here because value is expected to be here at runtime.
  // print(hoursSinceMidnight_with_const);
  // However, it's all good when we explicitly assign a value.
  const num hoursSinceMidnight_with_const = 2;
  print('Hours before midnight with const keyword: $hoursSinceMidnight_with_const');
}