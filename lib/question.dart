class Question{

  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  String correctanswer;


  Question(String q,String a,String b,String c, String d, String answer){
    correctanswer=answer;
    questionText=q;
    option1=a;
    option2=b;
    option3=c;
    option4=d;
  }

}