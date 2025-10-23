import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      stdout.write('Enter task to add: ');
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print('Task added successfully!');
    } else if (choice == '2') {
      if (tasks.isEmpty) {
        print('No tasks to remove.');
      } else {
        print('Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
        stdout.write('Enter task number to remove: ');
        int index = int.parse(stdin.readLineSync()!);
        if (index > 0 && index <= tasks.length) {
          print('Task "${tasks[index - 1]}" removed.');
          tasks.removeAt(index - 1);
        } else {
          print('Invalid task number!');
        }
      }
    } else if (choice == '3') {
      if (tasks.isEmpty) {
        print('No tasks available.');
      } else {
        print('Your Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (choice == '4') {
      print('Goodbye!');
      break;
    } else {
      print('Invalid choice!.');
    }
  }
}


