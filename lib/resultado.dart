import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
    const Resultado({super.key, required this.pontuacao, required this.quandoReiniciarQuestionario});
    final int pontuacao;
    final void Function() quandoReiniciarQuestionario;

    String get fraseResultado {
        if(pontuacao < 8) {
            return 'Parabéns';
        } else if(pontuacao < 12) {
            return 'Você é bom';
        } else if(pontuacao < 16) {
            return 'Impressionante';
        } else {
            return 'Nível Jedi';
        }
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Center(
                    child: Text(
                        fraseResultado,
                        style: const TextStyle(fontSize: 28),
                    ),
                ),
                const Text(''),
                TextButton.icon(
                    onPressed: quandoReiniciarQuestionario,
                    icon: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                    ),
                    label: const Text(
                        'Reiniciar?',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                )
            ],
        );
    }
}