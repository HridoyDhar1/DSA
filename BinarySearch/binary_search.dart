import 'dart:io';

void main() {
 int low=1;
 int high=100000000000;
 String response='';
 while(low<=high){
  int mid=(low+high)~/ 2;
  print("Is your number $mid?(Enter 'h' for too high,'l'for too low.'c' for correct)");
      response = stdin.readLineSync()!.toLowerCase();
      if(response=='c'){
        print('I guessed your number correctly');
        break;
      }
      else if(response=='h'){
        high=mid-1;

      }else if(response=='l'){
        low=mid+1;
      }else{
        print("invalid input");
      }
 }
}
