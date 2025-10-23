import 'dart:io';

void main() {
  File file = File('students.csv');

  file.writeAsStringSync('Name,Age,Address\n');
  file.writeAsStringSync('Juhi,20,Sylhet\n', mode: FileMode.append);
  file.writeAsStringSync('Naheen,22,Chittagong\n', mode: FileMode.append);
  file.writeAsStringSync('Diya,21,Dhaka\n', mode: FileMode.append);

  print('Student data written to students.csv');

  String data = file.readAsStringSync();
  print('Data from file:');
  print(data);
}


