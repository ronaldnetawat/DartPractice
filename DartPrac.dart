// BUILDING A MATH QUESTION QUIZ USING CLASSES, CONSTRUCTORS, IF-ELSE, LOOPS, ETC.

import "dart:math"; // importing the Dart Math library
import "dart:io"; // importing io: input/output 

String? prompt(String promptText){
  print('${promptText}');
  String? ans = stdin.readLineSync();
  return ans;

}

double promptDouble(String? promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  double myNum = double.parse(answer!);
  return myNum;
}

class MathQuestion {
  String? question;
  double answer = 0;

  MathQuestion(String? aQuestion, double aAnswer){
    this.question = aQuestion;
    this.answer = aAnswer;
  }
}

void main(){

  List<MathQuestion> questions = [
    MathQuestion("3 + 5", 8.0),
    MathQuestion("10 - 7", 3.0),
    MathQuestion("100 * 9", 900.0)
  ];

  int score = 0;
  for(MathQuestion mathQuestion in questions){
    double userAnswer = promptDouble(mathQuestion.question);
    if(userAnswer == mathQuestion.answer){
      score++;
    }
    print("");
  }
  
  print("Your score was ${score / questions.length * 100}%!");
}
