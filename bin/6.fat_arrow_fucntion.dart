
void main(){
  normalFunc(4);
  fatArrowFunc(5);
  fatArrowFuncUsingVar(6);


}

void normalFunc(int value){
  print('value is $value');
}


void fatArrowFunc(int value) => print('value is $value');


var normalFuncUsingVar = (int value){
  print('value is $value');
};

var fatArrowFuncUsingVar = (int value) => print('value is $value');
