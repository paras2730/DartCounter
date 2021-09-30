import 'dart:io';
import 'dart:ffi';

void main(List<String> arguments) {
  
  int operationValue;
  String? tempInput;
  int choice;
  bool stop=false;
  int number1;
  int number2;
  
  DartCounter dartCounter;

  print("Please enter both numbers....");

  tempInput=stdin.readLineSync();

  if(tempInput!=null && tempInput.isNotEmpty)
  {
  number1 = int.parse(tempInput);
  }
  else{
    number1=0;
  }
  
   tempInput=stdin.readLineSync();

  if(tempInput!=null && tempInput.isNotEmpty)
  {
  number2 = int.parse(tempInput);
  }
  else{
    number2=0;
  }

  print("Please enter username");
  tempInput=stdin.readLineSync();
  
  if(tempInput!=null && tempInput.isNotEmpty)
  {
  dartCounter = DartCounter(userName:tempInput,
                                count:100,
                                multiply:0,
                                divide:0,
                                remainder:0,
                                );
  }
  else{
    return;
  }


 print("Please enter the value which you want to Increment/Decrement");

   tempInput=stdin.readLineSync();

  if(tempInput!=null && tempInput.isNotEmpty)
  {
  operationValue = int.parse(tempInput);
  }
  else{
    operationValue=0;
  }
  
  while(!stop)
  {

  print('''Enter choice
           1. Print Value
           2. Increment
           3. Decrement
           4. Multiply
           5. Divide
           6. Remainder
           7. Change Username

  tempInput=stdin.readLineSync();
  if(tempInput!=null && tempInput.isNotEmpty)
  {
  choice = int.parse(tempInput);
  }
  else{
    choice=0;
  }
 
print("Starting counter with value : ${dartCounter.count} and username is ${dartCounter.userName}");
print("Starting Mulitplication counter with value : ${dartCounter.multiply}");
print("Starting Division counter value : ${dartCounter.divide}");
print("Starting Remainder counter value : ${dartCounter.remainder}\n\n");

  switch(choice){
    case 1: print(dartCounter);
            break;
 
    case 2: incrementCounter(counter:dartCounter,incrementValue:operationValue);     
            break;

    case 3: decrementCounter(counter:dartCounter,decrementValue:operationValue);
            break;

    case 4: Multiplication(Multiply:dartCounter,Number1:number1,Number2:number2);
            break;
    
    case 5: Divide(Divide:dartCounter,Number1:number1,Number2:number2);
            break;

    case 6: RemainderofNumbers(Remainder:dartCounter,Number1:number1,Number2:number2);
            break;
    
    case 7: ChangeUserName(dartCounter:dartCounter);
            break;

    default:
    print('DO SOMETHING');

  }
  print("Current value of count is : ${dartCounter.count} and username is ${dartCounter.userName}");
  print("Current value of Mulitplication count is : ${dartCounter.multiply}");
  print("Current value of Division count is : ${dartCounter.divide}");
  print("Current value of Remainder count is : ${dartCounter.remainder}\n\n");
  }
  print("Final value of count is : ${dartCounter.count} and username is ${dartCounter.userName}");
  print("Final value of Mulitplication count is : ${dartCounter.multiply}");
  print("Final value of Division count is : ${dartCounter.divide}");
  print("Final value of Remainder count is : ${dartCounter.remainder}\n\n");
}

void ChangeUserName({required DartCounter dartCounter}){
print("Please enter new username...");
String? tempInput=stdin.readLineSync();
if(tempInput!=null && tempInput.isNotEmpty)
{
  dartCounter.userName=tempInput;
}
}

void incrementCounter({required DartCounter counter, required int incrementValue})
  {
    counter.count=counter.count+incrementValue; 
  }

  void decrementCounter({required DartCounter counter, required int decrementValue})
  {
    counter.count=counter.count-decrementValue;    
  }

  void Multiplication({required DartCounter Multiply,required int number1,required int number2})
  {
    Multiply.multiply = number1*number2; 
  }

  void Divide({required DartCounter Divison,required int number1,required int number2})
  {
    if(number2==0){
     print("Divide by zero");
    }
    else{
      Divison.divide = number1/number2;
    } 
  }

  void RemainderofNumbers({required DartCounter Remainder,required int number1,required int number2})
  {
    Remainder.remainder = number1%number2; 
  }

  class DartCounter{
    int count;
    int multiply;
    double divide;
    int remainder;
    String userName;

    dartCounter({required this.count,required this.multiply,required this.divide,required this.remainder, required this.userName});
  }
