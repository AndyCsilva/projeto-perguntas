import 'package:flutter/material.dart';
import './resposta_component.dart';
import './questao_component.dart';

class QuestionarioComponent extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) aoSelecionar;

  QuestionarioComponent({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.aoSelecionar,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSeleciada()
        ? perguntas[this.perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        QuestaoComponent(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((r) {
          return RespostaComponent(
            r['texto'],
            () => this.aoSelecionar(r['pontuacao']),
          );
        }).toList(),
      ],
    );
  }

  bool temPerguntaSeleciada() =>
      this.perguntaSelecionada < this.perguntas.length;
}
