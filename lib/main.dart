import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main(List<String> args) =>	runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
	var _perguntaSelecionada = 0;
	var _pontuacaoTotal = 0;
	final List<Map> _perguntas = const [
		{
			'texto': 'Qual é sua cor favorita?',
			'respostas': [
				{'texto':'Preto', 'pontuacao': 10},
				{'texto':'Vermelho', 'pontuacao': 5},
				{'texto':'Verde', 'pontuacao': 3},
				{'texto':'Branco', 'pontuacao': 1},
			]
		},
		{
			'texto': 'Qual é seu animal favorito?',
			'respostas': [
				{'texto':'Coelho', 'pontuacao': 10},
				{'texto':'Cobra', 'pontuacao': 5},
				{'texto':'Elefante', 'pontuacao': 3},
				{'texto':'Leão', 'pontuacao': 1},
			]
		},
		{
			'texto': 'Qual seu instrutor favorito?',
			'respostas': [
				{'texto':'Maria', 'pontuacao': 5},
				{'texto':'João', 'pontuacao': 3},
				{'texto':'Leonardo', 'pontuacao': 10},
				{'texto':'Pedro', 'pontuacao': 1},
			]
		}
	];

	void _responder(int pontuacao) {
		if(temPerguntaSelecionada) {
			setState(() {
				_perguntaSelecionada++;
				_pontuacaoTotal += pontuacao;
			});
		}
	}

	void _reiniciarQuestionario() {
		setState(() {
			_perguntaSelecionada = 0;
			_pontuacaoTotal = 0;
		});
	}

	bool get temPerguntaSelecionada {
		return _perguntaSelecionada < _perguntas.length;
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text(
						'Perguntas',
						style: TextStyle(color: Colors.white),
					),
					backgroundColor: Colors.blue,
				),
				body: temPerguntaSelecionada
					? Questionario(
						perguntaSelecionada: _perguntaSelecionada,
						perguntas: _perguntas,
						temPerguntaSelecionada: temPerguntaSelecionada,
						quandoResponder: _responder,
					)
					: Resultado(
						pontuacao: _pontuacaoTotal,
						quandoReiniciarQuestionario: _reiniciarQuestionario,
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