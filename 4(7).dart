void main() {
  Map<String, String> contacts = {
    'Juhi': '1234567890',
    'Naheen': '9876543210',
    'Diya': '5556667777',
    'Sara': '1112223333',
    'Nusrat': '4445556666'
  };

  var keysWithLength4 = contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4:');
  for (var key in keysWithLength4) {
    print(key);
  }
}
