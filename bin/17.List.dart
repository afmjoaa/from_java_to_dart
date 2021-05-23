
void main() {

  var isBholaCity = true;
  var indiaCities = ['Mumbai', 'Dilhi', 'Bangalore', 'Hyderabad'];

  var listOfCities = [
    'Dhaka',
    if (isBholaCity) 'Bhola',
    ...indiaCities
  ];

  print(listOfCities);
}
