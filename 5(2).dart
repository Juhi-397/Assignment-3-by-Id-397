import 'dart:io';

void main() {

  File file = File('names.txt');
  String myName = 'Rehana Parvin Juhi';

  String friendName = 'Naheen';

  if (!file.existsSync()) {
    file.writeAsStringSync(myName + '\n');
  }
  file.writeAsStringSync(friendName + '\n', mode: FileMode.append);

  print('Friend\'s name added to names.txt successfully!');
}
