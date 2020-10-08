import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './resultado_component.dart';
import './questionario_component.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'vermelho', 'pontuacao': 3},
        {'texto': 'amarelo', 'pontuacao': 5},
        {'texto': 'verde', 'pontuacao': 7},
        {'texto': 'rosa', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Qual o seu animal predileto?',
      'respostas': [
        {'texto': 'cachorro', 'pontuacao': 3},
        {'texto': 'gato', 'pontuacao': 5},
        {'texto': 'pássaro', 'pontuacao': 7},
        {'texto': 'tartaruga', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Qual o seu lugar predileto?',
      'respostas': [
        {'texto': 'praia', 'pontuacao': 3},
        {'texto': 'campo', 'pontuacao': 5},
        {'texto': 'cidade', 'pontuacao': 7},
        {'texto': 'montanha', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Qual a sua comida predileta?',
      'respostas': [
        {'texto': 'lasanha', 'pontuacao': 3},
        {'texto': 'frango', 'pontuacao': 4},
        {'texto': 'carne assada', 'pontuacao': 10},
        {'texto': 'vegetais', 'pontuacao': 8},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questionario'),
          ),
          body: temPerguntaSeleciada()
              ? QuestionarioComponent(
                  perguntas: this._perguntas,
                  perguntaSelecionada: this._perguntaSelecionada,
                  aoSelecionar: this.responder,
                )
              : ResultadoComponent(
                  this._pontuacaoTotal, this._reiniciarFormulario)),
    );
  }

  void responder(int pontuacao) {
    if (temPerguntaSeleciada()) {
      setState(() {
        this._perguntaSelecionada++;
        this._pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarFormulario() {
    setState(() {
      this._perguntaSelecionada = 0;
      this._pontuacaoTotal = 0;
    });
  }

  bool temPerguntaSeleciada() =>
      this._perguntaSelecionada < (this._perguntas.length);
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return PerguntaAppState();
  }
}
