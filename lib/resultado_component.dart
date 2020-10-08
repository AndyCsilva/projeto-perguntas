import 'package:flutter/material.dart';

class ResultadoComponent extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  ResultadoComponent(this.pontuacao, this.quandoReiniciarQuestionario);

  String get feedback {
    if (this.pontuacao < 14) return 'Parabéns';
    if (this.pontuacao < 18) return 'Você é bom!';
    if (this.pontuacao < 28) return 'Impressionante!';
    if (this.pontuacao < 34) return 'Demais Cara!';
    return 'Nível JEDI!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          widthFactor: 20,
          child: Text(
            feedback,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          width: double.infinity,
          // margin: const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
          child: FlatButton(
            textColor: Colors.blue,
            //color: Colors.blue,
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: this.quandoReiniciarQuestionario,
          ),
        ),
      ],
    );
  }
}
