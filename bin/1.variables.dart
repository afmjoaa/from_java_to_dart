
void main(){

  //Note: All data types in dart are Objects

  //Numbers 1. int
  //        2. double
  num _num = 1.0;
  int _int = 1;
  double _double = 1.0;

  //Strings
  String _string = "this is a string";

  //Boolean
  bool _bool = true;


  //Function
  Function _function = (String one, int intPeram){
    return one;
  };

  //typedef
  ManyOperation _many = (int one, int two){
    return '$one and $two';
  };

}

typedef ManyOperation = String Function(int firstNo , int secondNo);
