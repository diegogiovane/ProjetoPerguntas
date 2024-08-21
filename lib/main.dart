import 'package:flutter/material.dart';

void main(List<String> args) =>	runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
	PerguntaApp({super.key});
	final perguntas = [
		'Qual é sua cor favorita?',
		'Qual é seu animal favorito?'
	];

	void responder() {
		debugPrint('Pergunta respondida #01');
	}

	void Function() funcaoQueRetornOutraFuncao() {
		return () {
			debugPrint('Pergunta respondida #02');
		};
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text('Perguntas'),
				),
				body: Column(
					children: <Widget>[
				    	Text(perguntas[0]),
						ElevatedButton(
							onPressed: responder,
							child: const Text('Resposta 1')
						),
						ElevatedButton(
							onPressed: funcaoQueRetornOutraFuncao(),
							child: const Text('Resposta 2')
						),
						ElevatedButton(
							onPressed: () {
								debugPrint('Pergunta respondida #03');
							},
							child: const Text('Resposta 3')
						),
						ElevatedButton(
							onPressed: () => debugPrint('Pergunta respondida #04'),
							child: const Text('Resposta 4')
						)
					],
				),
			)
		);
	}
}