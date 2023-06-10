## Introducing the Environment

```dart
void main() {
	print('Hello World!');
}
```

## Drawing a Shape

- Code runs in the order it's written

```dart
print('   /|');
print('  / |');
print(' /  |');
print('/___|');
```

## Variables

```dart
int age = 70;
String name = "Mike";

print("There once was a man named ${name}");
print("He was ${age} years old");

age = 25

print("He really liked the name ${name}");
print("But didn't like being ${age}");

```

## Data Types

```dart
int age = 26
double gpa = 3.5
bool isRegisteredVoter = false
String name = "Mike"

print(name)
```

## Strings

```dart
String greeting = "Hello";
//                 01234

greeting.length();
greeting[0];
greeting.toUpperCase();
greeting.indexOf("e");
greeting.contains("llo");
greeting + " World!";
```

## Numbers

```dart
import 'dart:math';

int quantity = 300;
double price = 5.99;

quantity += 5

print( 5 + 3 )
print( 10 % 3 )
min(5, 6)
sqrt(144)
```

## Getting User Input

```dart
import 'dart:io';

print("What is your name");
String? name = stdin.readLineSync();  // using String? because of some null-safety protocol
print("Hello ${name}");
```

## Building a Basic Calculator

```dart 
print("Enter first number: ");
String? input1 = stdin.readLineSync(); // using String? because of some null-safety protocol
print("Enter second number: ");
String? input2 = stdin.readLineSync(); // using String? because of some null-safety protocol

String num1 = input1 ?? '';
String num2 = input2 ?? '';
  
print(int.parse(num1) + int.parse(num2));
```

## Building a madlibs game

```dart
print("Enter a color: ");
String? color = stdin.readLineSync();

print("Enter a plural noun: ");
String? pluralNoun = stdin.readLineSync();

print("Enter a celebrity: ");
String? celebrity = stdin.readLineSync();

print("Roses are ${color}");
print("${pluralNoun} are blue");
print("I love ${celebrity}")
```

## Lists

```dart
List<int> favNum = [12,3,235,23,1,3,7,23,132,5]; // creating a list of type int

print(favNum); // printing the list
print(favNum.length); // prints length of the list
print(favNum[1]); // prints item at index 1
favNum[1] = 10; // changes the item at the index
favNum.add(8); // adds an item to the end of the list
favNum.indexOf(8); // prints index of the item
print(favNum.contains(7)); // boolean - checks if element is in the list
favNum.remove(3); // removes the specified element 
favNum.removeAt(2); // removes the element at the specified index
```

## Functions

```dart
void drawTriangle(){
  print('   /|');
  print('  / |');
  print(' /  |');
  print('/___|');
}

drawTriangle();
drawTriangle();
drawTriangle();
```

## Parameters & Arguments

```dart
void sayHi(String name, int age){
  print("Hello ${name}, you are ${age}");
}

sayHi("Mike", 26);
sayHi("Joe", 55);
```

## Return Statements

```dart
int addNumbers(int num1, int num2){
  return num1 + num2;
}

int answer = addNumbers(6, 7);
print(answer);
```

## Building a prompting function

```dart
String prompt(String promptText){
  print("${promptText}:");
  String answer = stdin.readLineSync();
  return answer;
}
```

## If Statements

- Read the prompt text from the website

I wake up
If I'm hungry 
  I eat breakfast 

I leave my house
if it's cloudy 
  I bring an umbrella 
otherwise 
  I bring sunglasses 

Im at a restaurant 
if I want meat 
  I order a steak 
otherwise if I want pasta 
  I order spaghetti & meatballs 
otherwise 
  I order a salad. 
  
```dart
bool isSmart = true;

if(isSmart){
  print("You are smart!")
} else {
  print("You need to study")
}

String name = "Mike";

if(name.contains("M")){
  print("you have an M in your name");
}
```

## &&/|| operators, elseif

```dart
bool isSmart = true;
bool isStudent = true;

if(isSmart && isStudent){
  print("You are a smart student!");
} else if (isSmart && !isStudent){
  print("You are a smart non-student!");
} else {
  print("You need to study");
}
```

## Building a better calculator

```dart
double promptNumber(){
  print("Enter a number:");
  return double.parse(stdin.readLineSync());
}

double num1 = promptNumber();

print("Operator (+,-,*,/):");
String operator = stdin.readLineSync();

double num2 = promptNumber();

if(operator == '+') print(num1 + num2);
else if(operator == '-') print(num1 - num2);
else if(operator == '*') print(num1 * num2);
else if(operator == '/') print(num1 / num2);
else print("invalid operator!");
```

## Switch Statements

```dart
switch(operator){
  case '+':
    print(num1 + num2);
    break;
  case '-':
    print(num1 - num2);
    break;
  case '/':
    print(num1 / num2);
    break;
  case '*':
    print(num1 * num2);
    break;
  default:
    print("invalid operator");
}
```

## While Loops

```dart
int i = 0;

while(i < 5){
  print(i);
  i++;
}
```

## Building a guessing game

```dart
String promptGuess(){
  print("Enter a guess:");
  return stdin.readLineSync();
}

String answer = 'michael scott';
String guess = '';

while(guess != answer){
  guess = promptGuess();
}

print("You Win!");
```

## For Loops

- First talk about how this is a common occurance

```dart
for(int i = 0; i < 10; i++){
  print(i);
}

List<String> friends = ["Jim", "Kevin", "Stanley"];

for(String friend in friends){
  print("Hello ${friend}");
}
```

## Drawing multiple triangles

```dart
String drawTriangle(int quantity){
  for(int i = 0; i < quantity; i++){
    print('   /|');
    print('  / |');
    print(' /  |');
    print('/___|');
  }
}

drawTriangle(5);
```

## Comments

```dart
// single line comment

/*
multi
line
comment
*/
```

## Classes & Objects

```dart
class Book {
	String title;
	String author;
	int noPages;
}

Book hp = Book();
hp.title = "Harry Potter";
hp.author = "JK Rowling";
hp.noPages = 500;

print(hp.author);
```

## Constructors

```dart
class Book {

	Book(String aTitle, String aAuthor, int aNoPages){
		this.title = aTitle;
		this.author = aAuthor;
		this.noPages = aNoPages;
	}

	String title;
	String author;
	int noPages;
}

Book hp = Book("Harry Potter", "JK Rowling", 500);

print(hp.author);
```

## Building a quiz

```dart
List<MathQuestion> questions = [
    MathQuestion('1 + 1', '2'),
    MathQuestion('2 - 7', '-5'),
  ];

  int score = 0;

  for(MathQuestion question in questions){
    String answer = prompt(question.prompt);
    if(answer == question.answer){
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }

  print("You got ${score}/${questions.length} correct");
```


## Class Functions

```dart
class Student {
    String name;
    double gpa;
    Student(String name, double gpa){
      this.name = name;
      this.gpa = gpa;
    }

    bool hasHonors(){
      return this.gpa >= 3.5;
    }
  }
```
