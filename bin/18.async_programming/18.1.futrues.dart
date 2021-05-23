
void main() {

  //chaining async call
  myFutureWithDelay
      .then((value) => secondFutureWithDelay(3, value))
      .catchError((err){ print('Catch $err');})
      .then((value) => print(value))
      .catchError((err){ print('Catch $err');});



}

/// Futures

/// get Instance of a future
final myFuture = Future<String>(() {
  print('Running future computation function');
  return 'Future String';
});

// Return a value immediately
final myFutureWithValue = Future<String>.value('Future immediate value');

// Return a error immediately
final myFutureWithError = Future<String>.error(Exception());

//Return a value with some delay
final myFutureWithDelay = Future<String>.delayed(Duration(seconds: 2), (){
  return 'Future String with 2 second delay';
});

//Chaining multiple future
Future<String> secondFutureWithDelay(int durationSecond, String valueOfFirstFuture){
  return Future<String>.delayed(Duration(seconds: durationSecond), (){
    return valueOfFirstFuture + ' + Extra $durationSecond second delay';
  });
}
