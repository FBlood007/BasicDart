// *************************Using Inheritance*************************
class Percentage{
  int? mrkObtained,totalMrks;
  
  void percent(mrkObtained ,totalMrks){
    
    print('Percentage = ${((mrkObtained/totalMrks)*100)}%');  
  }
}  

class Marks extends Percentage{
  int? maths;
  int? english;
  int? science;
  int totalMarks = 300;
  int totalObtMarks=0;
  
 
   
  sum({int maths=0, int english=0, int science=0}){
    totalObtMarks = maths+english+science;
    print('English = $english/100 Maths = $maths/100 Science = $science/100 \nTotal Marks = $totalObtMarks/$totalMarks');
    
    percent(totalObtMarks ,totalMarks);
  }
  
}

void main() {

   Marks m = Marks();
   m.sum(english: 60,maths: 70,science: 65);
   
}