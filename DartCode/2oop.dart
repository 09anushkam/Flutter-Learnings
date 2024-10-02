// Class and Object

// void main(){
//   Cookie cookie=Cookie(); // object
//   print('${cookie.size} cm');
//   cookie.baking(); // or use Cookie().baking();
//   final isCooling=cookie.isCooling();
//   print(isCooling);
// }

// Class
// class Cookie{
//   // variables
//   String shape='Circle';
//   double size=15.2; // cm
//   // method
//   void baking(){
//     print('baking has started');
//   }
//   bool isCooling(){
//     return false;
//   }
// }


// Constructor

// void main(){
//   final cookie = Cookie('rect',20); // object
//   print(cookie.shape);
//   print(cookie.size);
// }

// class
// class Cookie{
//   // variables
//   String? shape;
//   double? size; // cm
//   // Constructor
//   // Cookie(this.shape,this.size){
//   //   print('Cookie constructor is called');
//   //   baking();
//   // }
//   Cookie(String shape,double size){
//     print(this.shape);
//     this.shape=shape;
//     this.size=size;
//     print('Cookie constructor is called');
//     baking();
//   }
// }

// // method
// void baking(){
//     print('baking has started');
//   }

//   bool isCooling(){
//     return false;
//   }


// Getters and setters and private variables

// void main(){
//   final cookie = Cookie(shape: 'rect',size: 20); // object
//   print(cookie);
//   // print(cookie._height); // private variables are accessible within the same file but not in 2 different files
//   // print(cookie.height); //4 // getter
//   // cookie.setHeight=15; //setter
//   // print(cookie.height); //15
// }

// // class
// class Cookie{
//   // variables
//   final String shape;
//   final double size; // cm
//   // Constructor
//   Cookie({required this.shape,required this.size}){
//     // baking(shape,size);
//     baking();
//   }

//   // Private variables - private variabls are private to a file and not a class
//   int _height=4;
//   int _width=5;

//   // Getters
//   int get height => _height; // read only value of private variable

//   // Setters
//   set setHeight(int h){
//     _height=h;
//   }

//   // methods
//   int calculateSize(){
//   return _height*_width;
//   }
  
//   void baking(){
//     print('Your cookie which is of the $shape and $size has started baking');
//   }
// }

// method

// void baking(final shape, final size){
//     print('Your cookie which is of the $shape and $size has started baking');
//   }

// Static function
// Static variables

// void main(){
//   // no need of creating instance of class (object) to access static variables
//   // u can access static variables directly using class
//   // also constructor will not be called
//   print(Constants.greeting);
//   print(Constants.bye); 
//   print(Constants.giveMeSomeValue());
// }

// class Constants{
//   Constants(){
//     print('constructor called!');
//   }
//   static int height=10;
//   static String greeting='Hello,how are u?';
//   static String bye='bye';
//   static int giveMeSomeValue(){
//     return height;
//   }
// }


// Inheritance
// note - multiple inheritances is not allowed in dart

void main(){
  // Car car=Car();
  // print(car.noOfWheels);
  // print(car.isEngineWorking);
  // Vehicle car=Car();
  // print((car as Car).noOfWheels);
  final car=Car();
  car.accelerate();
  print(car.speed);
  // Truck truck=Truck();
  // print(truck.isEngineWorking);
  // print(truck.noOfWheels);
}

// parent
class SomeClass{
  int speed=15;
  void accelerate(){
    speed+=30;
  }
}

// child
class Vehicle extends SomeClass{
  bool isEngineWorking=false;
  bool isLightOn=true;
  @override
  void accelerate(){
    speed+=20;
  }
}

// class Vehicle{
//   int speed=10;
//   bool isEngineWorking=false;
//   bool isLightOn=true;
//   void accelerate(){
//     speed+=10;
//   }
// }

// grandchild 1
class Car extends Vehicle{
  int noOfWheels=4;
  void printSomething(){
    print(noOfWheels);
  }
}

// grandchild 2
class Truck extends Vehicle{
  int noOfWheels=8;
  void printSomething(){
    print(noOfWheels);
  }
}
