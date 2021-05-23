
import 'season.dart';
import 'time_duration.dart';

class WinterSeason extends Season{
  @override
  final double temperature = 20.0;
  @override
  final double rainFall = 20.0; //unit mm
  @override
  final double averageHumidity = 50.0; //unit percentile
  @override
  final List<String> fruitList = ['Oranges', 'Plums', 'Banana'];

}