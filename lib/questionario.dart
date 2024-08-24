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
    final void Function() quandoResponder;

    @override
    Widget build(BuildContext context) {
        List<String> respostas = temPerguntaSelecionada
            ? perguntas[perguntaSelecionada]['respostas']
            : [];

        return Column(
            children: <Widget>[
                Questao(texto: perguntas[perguntaSelecionada]['texto']),
                ...respostas.map((t) => Resposta(texto: t, quandoSelecionado: quandoResponder))
            ],
        );
    }
}