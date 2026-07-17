// Point class — x and y coordinate data members. No-argument and 2-argument constructors. Separate get/set functions (getX, getY, setX, setY). A display method shows the point as (x, y). Make appropriate functions const.

class Point{
int x;
int y;
//default constructor
Point(): x= 0, y=0;

Point.value(this.x, this.y);//parameterized constructor
//getter for X
int getX(){
  return x;
}
//getter for Y
int getY(){
  return y;
}
//setter for X
void setX(int value){
  x=value;
}
//setter for Y
void setY(int value){
  y=value;
}
//display method
void display(){
  print( "Default values:($x, $y)");

}

}
void main(){
  // Create Point object using default constructor
  Point p= Point();
  //display default value
  p.display();
  //set new values
  p.setX(90);
  p.setY(13);
  //display new values
  p.display();
  //crete Point object using parameterized constructor
  Point p1= Point.value(10, 21);
  //display parameterized value
  p1.display();

}
