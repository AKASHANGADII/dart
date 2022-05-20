import 'dart:io'
void main() {
  int present,absent;
  double percent,reqPercent,toBePresent,canAbsent;
//   print("Present>>");
//   int? present = int.parse(stdin.readLineSync()!);
//   print("Absent>>");
//   int? absent = int.parse(stdin.readLineSync()!);
  present=3;
  absent=2;
  
  reqPercent=0.75;
  percent=present/(present+absent);
  if(percent==reqPercent){
    print("On Track");
  }
  if(percent<reqPercent){
    toBePresent=(reqPercent*absent)/(1-reqPercent);
    print("You have to attend ${toBePresent-present} classes");
    
  }
  else{
    canAbsent=(present/reqPercent)-present;
    print("You can bunk ${(canAbsent-absent).floor()} classes");
  }
}
