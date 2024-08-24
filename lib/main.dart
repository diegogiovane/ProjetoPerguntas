import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main(List<String> args) =>	runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
	var _perguntaSelecionada = 0;
	final List<Map> _perguntas = const [
		{
			'texto': 'Qual é sua cor favorita?',
			'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
		},
		{
			'texto': 'Qual é seu animal favorito?',
			'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
		},
		{
			'texto': 'Qual seu instrutor favorito?',
			'respostas': ['Maria', 'João', 'Leo', 'Pedro']
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