void main() {
  Map<String, dynamic> person = {
    'name': 'Juhi',
    'address': '123 Street',
    'age': 20,
    'country': 'Bangladesh'
  };

  person['country'] = 'London';

  print('Person Details:');
  person.forEach((key, value) {
    print('$key: $value');
  });
}
