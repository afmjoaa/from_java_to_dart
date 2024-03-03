
class Season{

  late double temperature; //Fahrenheit
  late double rainFall; //unit mm
  double averageHumidity = 30.0; //unit percentile
  late List<String> fruitList;

  Season(){
    print('temperature: $temperature\n'
        'rainFall: $rainFall\n'
        'averageHumidity: $averageHumidity\n'
        'fruitList: ${fruitList.toString()}\n');
  }

  static double getCelsiusFromFahrenheit(double fahrenheit) => fahrenheit * (9/5) + 32;

}