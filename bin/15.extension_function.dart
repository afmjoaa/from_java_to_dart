
/// Extension Function: An extension function is a member function of a class, which is defined outside the class.

void main() {

  String number = '21';
  print('${number == 21}');
  print('${number.getIntegerFromString() == 21}');

}

extension MyString on String{

  int getIntegerFromString(){
    return int.parse(this);
  }
}