import 'dart:async';

/// Point of concern
/// Sync  |      int     |  Iterator<int>
/// Async |  Future<int> |  Stream<int>
/// By default steams are setup for single subscription
/// But can use asBroadcastStream for multi subscription
/// cancelOnError true by default
/// subscription can be paused resumed or canceled
/// .map method for data manipulation
/// .where to filter the stream
/// .distinct for getting only different events

class NumberCreator{
  var timer;

  var _count = 1;

  final StreamController _controller = StreamController<int>();
  Stream<int> get stream => _controller.stream;
  StreamSink<int> get sink => _controller.sink;

  NumberCreator(){
    timer = Timer.periodic(Duration(seconds: 1,), (t){
      sink.add(_count);
      _count++;
    });
  }

  void cancelTimerAndCloseStream(){
    _controller.done;
    _controller.close();
    timer.cancel();
  }

}