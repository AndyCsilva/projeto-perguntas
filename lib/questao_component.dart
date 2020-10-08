import 'package:flutter/material.dart';

class QuestaoComponent extends StatelessWidget {
  final String pergunta;
  QuestaoComponent(this.pergunta);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.pergunta,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
