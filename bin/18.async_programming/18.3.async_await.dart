import 'dart:async';
import 'dart:io';

import 'number_creator.dart';

void main() {
  //createData().then((value) => print(value.data));
  //createDataUsingAsync().then((value) => print(value.data));

  var numberCreator = NumberCreator();
  getTotal(numberCreator).then((value) => print(value));
}

Future<int> getTotal(NumberCreator numberCreator) async{
  var total = 0;

  await for (var value in numberCreator.stream){
    total += value;
    if(value >= 5) {
      numberCreator.cancelTimerAndCloseStream();
    }
  }
  return total;
}

Future<int> _loadFromDisk() {
  return Future<int>.value(1);
}

Future<String> _fetchNetworkData(int id) {
  return Future(() {
    return 'String $id';
  });
}

class ProcessedData {
  final String data;

  ProcessedData(this.data);

  ProcessedData.empty() : data = 'empty';
}

Future<ProcessedData> createData() {
  return _loadFromDisk().then((id) {
    return _fetchNetworkData(id);
  }).then((data) {
    return ProcessedData(data);
  }).catchError(
    (onError) {
      print('Network error: $onError');
      return ProcessedData.empty();
    },
    test: (err) => err is HttpException,
  ).whenComplete(() => print('All complete'));
}

Future<ProcessedData> createDataUsingAsync() async {
  try{
    final id = await _loadFromDisk();
    final data = await _fetchNetworkData(id);
    return ProcessedData(data);
  }on HttpException catch(err){
    print('Network error: $err');
    return ProcessedData.empty();
  }finally{
    print('All complete');
  }
}
