//Calculate the area of an ellipse (minor axis = 4cm, major axis = 6cm).
void main(){
  double majorAxis = 6.0;
  double minorAxis = 4.0;

  //semi axes
  double a =majorAxis / 2;  
  double b = minorAxis / 2;
  // area calculation
   double area = 3.14 * a * b;
    print('Major Axis: $majorAxis cm');
    print('Minor Axis: $minorAxis cm');
    print('Area of the ellipse: $area cm2'); // Output: Area of the ellipse: 18.84

}