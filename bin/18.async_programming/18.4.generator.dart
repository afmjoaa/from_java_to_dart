/// Generator function is a function that return
/// Iterable in case of synchronous operation
/// and Stream in case of asynchronous operation

void main() {
  final numbers = getRangeRecursive(1, 5);
  numbers.forEach((element) {
    print(element);
  });

  final doubles = fetchDoubles(100, 105);
  doubles.listen((event) {
    print(event);
  });
}

Iterable<int> getRangeRecursive(int start, int finish) sync* {
  // recursive example
  if (start <= finish) {
    yield start;
    yield* getRangeRecursive(start + 1, finish);
  }
}

Iterable<int> getRange(int start, int finish) sync* {
  for (var i = start; i <= finish; i++) {
    yield i;
  }
}


Stream<int> fetchDoubles(int start, int finish) async* {
  for (var i = start; i <= finish; i++) {
    yield await fetchDouble(i);
  }
}

Future<int> fetchDouble(int val) {
  return Future.value(val);
}
