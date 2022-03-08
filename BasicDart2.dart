// *************************Using Interface with Constructor*************************/\
mixin Percentage{
 
  void percent();
        
}

class Marks with Percentage{
  int? maths=0;
  int? english=0;
  int? science=0;
  int totalMarks = 300;
  int totalObtMarks=0;
  
  Marks({this.maths, this.english, this.science}){
    totalObtMarks = maths+english+science;
  }  
  
  percent(){
    print('Percentage = ${(totalObtMarks/totalMarks)*100}%');
    
    
  }
  sum(){ 
     print('English = ${english}/100 Maths = ${maths}/100 Science = ${science}/100 \nTotal Marks = $totalObtMarks/$totalMarks');   
  }
   
}

void main() {
  Marks m = Marks(english: 60,maths: 70,science: 65);
  m.sum();
  