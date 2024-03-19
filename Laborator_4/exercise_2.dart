//Implementati o Stiva folosind fisiere ca storage.

import 'dart:io';

class Stack {
  late File file;

  Stack(String filePath) {
    file = File(filePath);
  }

  void push(int value) {
    file.writeAsStringSync('$value\n', mode: FileMode.append);
  }

  int? pop() {
    List<String> lines = file.readAsLinesSync();
    if (lines.isEmpty) {
      return null;
    }

    int value = int.parse(lines.last);
    lines.removeLast();

    file.writeAsStringSync(lines.join('\n'));

    return value;
  }

  bool isEmpty() {
    return file.lengthSync() == 0;
  }

  void clear() {
    file.writeAsStringSync('');
  }
}

void main() {
  Stack stack = Stack('Laborator_4\stack.txt');

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  print(stack.pop()); 
  print(stack.pop()); 

  print(stack.isEmpty()); 

}
