
//Calculate simple interest for P=4000, T=2, R=5.5 using I = P×T×R/100.
void main(){
  double P = 4000;
  double T = 2;
  double R = 5.5;

  double Interest =(P*T*R)/100;
  print('Principal: $P');
  print('Time: $T years');
  print('Rate: $R% ');
  print('Simple Interest: $Interest'); // Output: Simple Interest: 440.0
}