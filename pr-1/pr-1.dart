import'dart:io'

void main()
{
  int n,largest=0;
  stdout.write("Enter n :");
  n=int.parse(stdin.readLineSync()??"0");
  List a= List.generate(n, (i){
    stdout.write("a[$i] :");
    return int.parse(stdin.readLineSync()??"0");
  } );
  a.forEach((element) {
    if(largest < element)
    {
      largest=element;
    }
  });
  stdout.write("$largest");
}