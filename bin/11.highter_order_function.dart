/// Point of concern
/// 1. Lambda -> A function without a name / Anonymous function
///
/// 2. Higher order function -> A function which takes another function as params
/// or returns another function is HOF
/// 3. typedef

void main(){

  Function printMyName = (String name){
    print('My name is $name');
  }; // Lambda

  printMyName('Karim');

  //HOD example
  void calculate(double a, double b, MathOperation operation){
    print(operation(a, b));
  }

  double addOperation(double a, double b){
    return a+b;
  }

  double subtractOperation(double a, double b){
    return a-b;
  }

  double multiplyOperation(double a, double b){
    return a*b;
  }

  double divideOperation(double a, double b){
    return a/b;
  }

  calculate(2, 3, addOperation);
}

typedef MathOperation = double Function(double a, double b);
