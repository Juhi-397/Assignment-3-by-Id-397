void main() {
  // Create a list of 7 friend names
  List<String> friends = [
    'Aliza',
    'Juhi',
    'Ansar',
    'Naheen',
    'Diya',
    'Arif',
    'Eva'
  ];

  var namesStartingWithA = friends.where((name) => name.startsWith('A'));

  print('Names starting with A:');
  for (var name in namesStartingWithA) {
    print(name);
  }
}

