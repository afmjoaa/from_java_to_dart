
void main(){
  var singletonOne = SingletonClass();
  print('Before changing,singletonOne Name: ${singletonOne.singletonName}');
  singletonOne.singletonName = 'singletonOne';
  print('After changing, singletonOne Name: ${singletonOne.singletonName}');

  var singletonTwo = SingletonClass();
  print('After changing, singletonTwo Name: ${singletonTwo.singletonName}');
}

class SingletonClass{

  String singletonName = 'SingletonClass';

  static final SingletonClass _singletonClass = SingletonClass._initConstructor();

  factory SingletonClass(){
    return _singletonClass;
  }

  SingletonClass._initConstructor(){
    print('Initializing for the first time');
  }
}