import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  QuestionIdentifier({super.key,
  required this.isCorrectAnswer,
  required this.questionIndex
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build (BuildContext context) {
    final questionnumber = questionIndex+1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
        ? const Color.fromARGB(255, 13, 199, 22)
        : const Color.fromARGB(255, 227, 24, 10),
        borderRadius: BorderRadius.circular(100),
      ),
      child: 
      Text(questionnumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 22, 2, 56)
      ),),
    );
  }
}