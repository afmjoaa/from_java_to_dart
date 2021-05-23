
class Animal{
  String _name;

  set name(value) {
    _name = value;
  }
  String get name{
    return _name;
  }

  int _age;

  Animal(this._name, this._age);

  void printAnimalProperties() {
    print('Name of the animal is $_name & age is $_age');
  }
}

