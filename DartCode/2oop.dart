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


void main(){
  final cookie = Cookie('rect',20);
  print(cookie.shape);
  print(cookie.size);
}

class Cookie{
  // variables
  String? shape;
  double? size; // cm
  // Constructor
  // Cookie(this.shape,this.size){
  //   print('Cookie constructor is called');
  //   baking();
  // }
  Cookie(String shape,double size){
    print(this.shape);
    this.shape=shape;
    this.size=size;
    print('Cookie constructor is called');
    baking();
  }
  
}

// method
void baking(){
    print('baking has started');
  }

  bool isCooling(){
    return false;
  }