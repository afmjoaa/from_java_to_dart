/// Point of concern
/// 1. Definition
/// 2. Outside class example/Local variable
/// 3. Inside class example/Instance variable
/// 4. Const constructor example

void main(){

  final name = 'Karim';
  final String nameOne = 'Karim One';

  const nameTwo = 'Karim two';
  const String nameThree = 'Karim three';

  final laptopOne = Laptop('Asus', 8, 256);

}

class Laptop{

  final String brand;
  final int ram;
  final int memory;
  static const int fanSpeed =10;

  Laptop(this.brand, this.ram, this.memory);
}


/// Difference between const and final
/// 1. "final" means single-assignment: a final variable must have an initializer.
/// 2. const means that the object's entire deep state can be determined entirely at compile time
/// and that the object will be frozen and completely immutable.
/// 3. const are canonicalized
