import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main(List<String> args) =>	runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
	var _perguntaSelecionada = 0;

	void _responder() {
		setState(() {
			_perguntaSelecionada++;
		});

		debugPrint(_perguntaSelecionada.toString());
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
				    	Questao(texto: perguntas[_perguntaSelecionada]),
						const Resposta(texto: 'Resposta 1'),
						const Resposta(texto: 'Resposta 2'),
						const Resposta(texto: 'Resposta 3'),
						// ElevatedButton(
						// 	onPressed: _responder,
						// 	child: const Text('Resposta 1')
						// ),
						// ElevatedButton(
						// 	onPressed: _responder,
						// 	child: const Text('Resposta 2')
						// ),
						// ElevatedButton(
						// 	onPressed: _responder,
						// 	child: const Text('Resposta 3')
						// )
					],
				),
			)
		);
	}
}

class PerguntaApp extends StatefulWidget {
	const PerguntaApp({super.key});

	@override
	// ignore: library_private_types_in_public_api
	_PerguntaAppState createState() {
		return _PerguntaAppState();
	}
}