import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:problem_solver/components/my_button.dart';
import 'package:problem_solver/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(),
                          style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(result.toString(),
                          style: TextStyle(fontSize: 30,color: Colors.white),),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC', color: UserOrange,onPress: (){
                          userInput = '';
                          result = '';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+/-', color: UserBlue,onPress: (){
                          userInput += '+/-';
                          setState(() {

                          });

                        },),
                        MyButton(title: '%', color: UserBlue,onPress: (){
                          userInput += '%';
                          setState(() {

                          });

                        },),
                        MyButton(title: '/', color:UserBlue,onPress: (){
                          userInput += '/';
                          setState(() {

                          });

                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7', color: UserLight,onPress: (){
                          userInput += '7';
                          setState(() {

                          });

                        },),
                        MyButton(title: '8', color: UserLight,onPress: (){
                          userInput += '8';
                          setState(() {

                          });
                        },),
                        MyButton(title: '9', color: UserLight,onPress: (){
                          userInput += '9';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'x', color:UserBlue,onPress: (){
                          userInput += 'x';
                          setState(() {

                          });

                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4', color: UserLight,onPress: (){
                          userInput += '4';
                          setState(() {

                          });

                        },),
                        MyButton(title: '5', color: UserLight,onPress: (){
                          userInput += '5';
                          setState(() {

                          });

                        },),
                        MyButton(title: '6', color: UserLight,onPress: (){
                          userInput += '6';
                          setState(() {

                          });

                        },),
                        MyButton(title: '-', color:UserBlue,onPress: (){
                          userInput += '-';
                          setState(() {

                          });

                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1', color: UserLight,onPress: (){
                          userInput += '1';
                          setState(() {

                          });

                        },),
                        MyButton(title: '2', color: UserLight,onPress: (){
                          userInput += '2';
                          setState(() {

                          });

                        },),
                        MyButton(title: '3', color: UserLight,onPress: (){
                          userInput += '3';
                          setState(() {

                          });

                        },),
                        MyButton(title: '+', color:UserBlue,onPress: (){
                          userInput += '+';
                          setState(() {

                          });

                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0', color: UserLight,onPress: (){
                          userInput += '0';
                          setState(() {

                          });

                        },),
                        MyButton(title: '.', color: UserLight,onPress: (){
                          userInput += '.';
                          setState(() {

                          });

                        },),
                        MyButton(title: 'DEL', color: UserTeal,onPress: (){
                          userInput = userInput.substring(0, userInput.length-1);
                          setState(() {

                          });

                        },),
                        MyButton(title: '=', color:UserPurple,onPress: (){
                          equalpress();
                          setState(() {

                          });
                        },),
                      ],
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
  void equalpress(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
   Parser p = Parser();
   Expression expression = p.parse(finalUserInput);
   ContextModel contextModel = ContextModel();
   double eval = expression.evaluate(EvaluationType.REAL, contextModel);
   result = eval.toString();
  }
}


