import 'package:flutter/material.dart';

void main(List<String> args) =>	runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
	PerguntaApp({super.key});

	var perguntaSelecionada = 0;

	void responder() {
		perguntaSelecionada++;
		debugPrint(perguntaSelecionada.toString());
	}

	@override
	Widget build(BuildContext context) {
		final perguntas = [
			'Qual é sua cor favorita?',
			'Qual é seu animal favorito?'
		];

		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text('Perguntas'),
				),
				body: Column(
					children: <Widget>[
				    	Text(perguntas[perguntaSelecionada]),
						ElevatedButton(
							onPressed: responder,
							child: const Text('Resposta 1')
						),
						ElevatedButton(
							onPressed: responder,
							child: const Text('Resposta 2')
						),
						ElevatedButton(
							onPressed: responder,
							child: const Text('Resposta 3')
						)
					],
				),
			)
		);
	}
}