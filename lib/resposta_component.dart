import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RespostaComponent extends StatelessWidget {
  final String _resposta;
  final void Function() aoSelecionar;

  RespostaComponent(this._resposta, this.aoSelecionar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue[400],
        child: Text(this._resposta),
        onPressed: this.aoSelecionar,
      ),
    );
  }
}
