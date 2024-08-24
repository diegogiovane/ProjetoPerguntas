import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
    const Questionario({
        super.key,
        required this.perguntas,
        required this.perguntaSelecionada,
        required this.temPerguntaSelecionada,
        required this.quandoResponder,
    });

    final List<Map> perguntas;
    final int perguntaSelecionada;
    final bool temPerguntaSelecionada;
    final void Function(int) quandoResponder;

    @override
    Widget build(BuildContext context) {
        List<Map<String, Object>> respostas = temPerguntaSelecionada
            ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>>
            : [];

        return Column(
            children: <Widget>[
                Questao(texto: perguntas[perguntaSelecionada]['texto']),
                ...respostas.map((resp) {
                    return Resposta(
                        texto: resp['texto'] as String,
                        quandoSelecionado: () => quandoResponder(int.parse(resp['pontuacao'].toString())),
                    );
                }),
            ],
        );
    }
}