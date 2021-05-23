import 'number_creator.dart';

void main() {
  final myStream = NumberCreator().stream;

  final subscription = myStream.listen(
      (data) {
        print('data : $data');
      },
      onError: (err) {
        print('Error : $err');
      },
      cancelOnError: false,
      onDone: () {
        print('Done');
      });

}


