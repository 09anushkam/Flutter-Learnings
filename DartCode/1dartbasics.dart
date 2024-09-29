void main() {

  // comment

  /*
  Multiline Comment
  Comment 2
   */

  print('a'+'b'); // concatenation
  print('b'*3); // 3 times b

  // datatypes
  int a = 25;
  double b = 25.5;
  bool c = false;
  String d = 'anushka murade';
  dynamic someValue = 'blah blah'; // anything // not recommended
  print(a+b);
  print(c);
  print(d);
  print(someValue);

  // print(variabe.property);
  print(a.isOdd);
  print(b.abs());
  print(d.isEmpty);
  print(d.length);
  print(someValue.runtimeType); // dynamic -> String

  // reassigning values
  int firstValue=30;
  print(firstValue);
  firstValue=20;
  print(firstValue);
  firstValue=firstValue+20;
  firstValue+=20;
  print(firstValue);

  String greeting='Hello , World';
  print(greeting);
  greeting='${greeting} Yoooo';
  print(greeting);

  // using $ in string just add \ before it
  String currency = '\$12';
  print(currency);

  // multiine string
  greeting='''Hello
  World,
  Have a good day.
  See ya \n Hey
  ''';

  print(greeting);

  // Variables
  // var/final/const variableName=value;

  var someX='10'; // mutable -> can change
  final someX2='10'; // immutable
  const someX3='10'; // immutable
  print(someX);
  print(someX2);
  print(someX3);

  final date=DateTime.now(); // run time constant
  // const date=DateTime.now(); // compile time constant // gives error
  print(date);

  // Optional Variables
  // String/int/bool/null

  // Null values are allowed in this datatypes just put ? after datatype
  // these are more preferable than final some=null; and const some=null;
  String? some='';
  int? some2=null;
  print(some);
  print(some2);

  // null safety
  String? nullString='';
  print(nullString);
  nullString='354 hello world';
  print(nullString);
  nullString=null;
  print(nullString);
  // print(nullString.length); // compile time error
  // print(nullString!.length); // run time error
  print(nullString?.length); // prints null
  print(nullString?.length??0);
  print(nullString?.length??1);

  // if else is similar to c programming except the print statement

  // Ternary
  // bool value=d.startsWith('a');
  String value=d.startsWith('a')?'wow':'naha';
  print(value);

  // switch case is also similar to c but here break is not needed
  // if cases are empty put break - 1:35:30
  // switch case also allows relational operators now

  // Loops is also similar to c

  // functions
  // print(printName());
  
  // print(printNameAndAge().$2); // age
  // var (age,name)=printNameAndAge();
  // print(age); // age
  // print(name); // name
  
  // String name='anu';
  // argumentSequencingNeeded(name, 20, "Hello");
  // noArgumentSequencingNeeded(name: name, greeting: "Hello"); // if age is not passed it will be null by default

  // U can have named and positional arguments together
  // also u can't use positional aguments after named arguments
  // for more details watch video

}

String printName(){
  return 'Anushka';
}

(int,String) printNameAndAge(){
  return (20,'Anushka');
}

// positional arguments
void argumentSequencingNeeded(String name,int age,String greeting){
print(name);
}

// named arguments
void noArgumentSequencingNeeded({required String name,required int age, required String greeting}){
print(name);
}