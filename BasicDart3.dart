// *************************Using Interface without Constructor*************************
mixin Percentage{
 
  void percent(int num);
        
}

class Marks with Percentage{
  int? maths=0;
  int? english=0;
  int? science=0;
  int totalMarks = 300;
  int totalObtMarks=0;
  
  percent(int num){
    print('Percentage = ${(num/totalMarks)*100}%');
    
  }

  int sum({int maths=0, int english=0, int science=0}){
     totalObtMarks = maths+english+science;
     print('English = $english/100 Maths = $maths/100 Science = $science/100 \nTotal Marks = $totalObtMarks/$totalMarks');
    
     return totalObtMarks;
  } 
  
}

void main() {

   Marks m = Marks();
   int num = m.sum(english: 60,maths: 70,science: 65);
   m.percent(num);
    
}

