
/// Closure : A closure is a bundle of a function and variables from the outer scope that the function depends on.

void main(){

  var programmer = 'Naruto';

  Function hackProgrammer = (String hacker){
    programmer = hacker;
  };

  hackProgrammer('Boruto');

  print(programmer);
}