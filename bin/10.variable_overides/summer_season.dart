
import 'season.dart';
import 'time_duration.dart';

class SummerSeason extends Season implements TimeDuration{

  @override
  final double temperature;
  @override
  final double rainFall = 40.0; //unit mm
  @override
  final double averageHumidity = 30.0; //unit percentile
  @override
  final List<String> fruitList = ['Mango', 'Litchi', 'Pineapple'];

  SummerSeason(this.temperature){
    print('SummerSeason constructor called');
  }

  @override
  void getDuration() {
    print('from February to April');
  }
}