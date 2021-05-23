/// Point of concern
/// 1. Instance variable
/// 2. Final instance variable
/// 3. const static variable
/// 4. constructor with final variables
/// 5. const constructor
/// 6. constructor body
/// 7. super call for constructor
/// 8. Named constructor
/// 9. private and public variable
/// 10. getter and setter for variables

void main() {

  var humanOne = Human('Male', 'Karim', 24);
  humanOne.profession = 'Engineering';

  print('The profession of ${humanOne.name} is ${humanOne.profession}');

}


class Human extends LivingBeing{
  final String gender;
  final String name;
  String _profession;

  set profession(value) {
    _profession = value;
  }
  String get profession{
    return _profession;
  }

  static const pi = 3.14;

  Human(this.gender, this.name, age): super(age){
    print('My name is $name, gender is $gender & age $age');
  }

  Human.second(this.gender, this.name, age): super(age);
}

class LivingBeing{
  final int age;

  LivingBeing(this.age);
}





