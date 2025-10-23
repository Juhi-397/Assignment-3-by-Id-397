import 'dart:io';

void main() {
  File file = File('hello.txt');

  String name = 'Rehana Parvin Juhi';

  file.writeAsStringSync(name + '\n', mode: FileMode.append);

  print('Name added to hello.txt successfully!');
}
