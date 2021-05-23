
/// Mixin : Mixin is a way of reusing a class's code in multiple class hierarchies

void main() {

   var parrot = Bird();
   parrot.walk();
}

abstract class Animal {
  void eat() {
    print('Eating!!');
  }

  void sleep(){
    print('Sleeping!!');
  }
}

class Fish extends Animal {
  void swim() {
    print('Swimming');
  }
}

class Bird extends Animal with Walk , BreathAir{
  void fly() {
    print('Flying');
  }
}

class Mammal extends Animal with Walk, BreathAir{
  void milk() {
    print('Can produce milk');
  }
}

class WalkClass {
  void walk() {
    print('Walking');
  }
}

mixin Walk on Animal {
  void walk() {
    print('Walking');
    eat();
  }
}

mixin BreathAir {
  void canBreathAir() {
    print('Breathing in air');
  }
}






