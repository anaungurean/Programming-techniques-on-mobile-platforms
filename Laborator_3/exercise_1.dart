// Implement a Queue (push(), pop(), back(), front(), isEmpty(), toString()).

class Queue {
  List<int> _queue = [];

  void push(int value) {
    _queue.add(value);
  }

  int pop() {
    return _queue.removeAt(0);
  }

  int back() {
    return _queue.last;
  }

  int front() {
    return _queue.first;
  }

  bool isEmpty() {
    return _queue.isEmpty;
  }

  @override
  String toString() {
    return _queue.toString();
  }
}

void main() {
  Queue queue = Queue();
  queue.push(1);
  queue.push(2);
  queue.push(3);
  print(queue);
  print(queue.pop());
  print(queue);
  print(queue.back());
  print(queue.front());
  print(queue.isEmpty());
  print(queue.pop());
  print(queue.pop());
  print(queue.isEmpty());
}