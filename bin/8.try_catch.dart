
void main() {


  try {

    // 1. IntegerDivisionByZeroException
    //var result = 12~/0;

    // 2. NoSuchMethodError
    // String nullString;
    // if(nullString.length == 1) {
    //   print('This will never be printed');
    // }

    // 3. UserNotFoundException
    throw UserNotFoundException();

  } on NoSuchMethodError catch(error) {
    print('$error');
  } on UserNotFoundException catch(error) {
    print('User is not found');
  }
  catch (error) {
    print('The exception thrown is $error');
  }
  finally {
    print('This is finally block which will be executed every time');
  }

}


class UserNotFoundException implements Exception{
  String errorMsg(){
    return 'user not found exception';
  }
}
