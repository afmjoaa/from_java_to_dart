
void main(){

  var listOfName = ['X', 'Y', 'Z'];

  loopOne:
  for (var value in listOfName) {
    loopTwo:
    for (var iterator = 0; iterator < 4; iterator++) {
      if (iterator == 1) {
        break loopOne;
      }
      print('Name $value & iterator $iterator');
    }
  }

}