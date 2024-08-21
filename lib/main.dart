import 'package:flutter/material.dart';

void main(List<String> args) =>	runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
	PerguntaApp({super.key});
	final perguntas = [
		'Qual é sua cor favorita?',
		'Qual é seu animal favorito?'
	];

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
						const ElevatedButton(
							onPressed: null,
							child: Text('Resposta 1')
						),
						const ElevatedButton(
							onPressed: null,
							child: Text('Resposta 2')
						),
						const ElevatedButton(
							onPressed: null,
							child: Text('Resposta 3')
						)
					],
				),
			)
		);
	}
}