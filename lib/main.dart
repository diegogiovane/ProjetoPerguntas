import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main(List<String> args) =>	runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
	var _perguntaSelecionada = 0;
	final List<Map> _perguntas = const [
		{
			'texto': 'Qual é sua cor favorita?',
			'respostas': [
				{'texto':'Preto', 'nota': 10},
				{'texto':'Vermelho', 'nota': 5},
				{'texto':'Verde', 'nota': 3},
				{'texto':'Branco', 'nota': 1},
			]
		},
		{
			'texto': 'Qual é seu animal favorito?',
			'respostas': [
				{'texto':'Coelho', 'nota': 10},
				{'texto':'Cobra', 'nota': 5},
				{'texto':'Elefante', 'nota': 3},
				{'texto':'Leão', 'nota': 1},
			]
		},
		{
			'texto': 'Qual seu instrutor favorito?',
			'respostas': [
				{'texto':'Maria', 'nota': 5},
				{'texto':'João', 'nota': 3},
				{'texto':'Leo', 'nota': 10},
				{'texto':'Pedro', 'nota': 1},
			]
		}
	];

	void _responder() {
		if(temPerguntaSelecionada) {
			setState(() {
				_perguntaSelecionada++;
			});
		}
	}

	bool get temPerguntaSelecionada {
		return _perguntaSelecionada < _perguntas.length;
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text('Perguntas'),
				),
				body: temPerguntaSelecionada
					? Questionario(
						perguntaSelecionada: _perguntaSelecionada,
						perguntas: _perguntas,
						temPerguntaSelecionada: temPerguntaSelecionada,
						quandoResponder: _responder,
					)
					: const Resultado(),
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