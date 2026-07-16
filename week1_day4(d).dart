//Swap the values of two variables. 
void main(){
  int a= 2006;
  int b= 2008;
  print('=====before swapping=====');
  print('a= $a');
  print('b= $b');

  //swaping using temp variable
  int temp =a;
  a=b;
  b=temp;
  print('=====after swapping=====');
  print('a= $a');
  print('b= $b');
}