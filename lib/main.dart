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
	}

	@override
	Widget build(BuildContext context) {
		final List<Map> perguntas = [
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

		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: const Text('Perguntas'),
				),
				body: Column(
					children: <Widget>[
				    	Questao(texto: perguntas[_perguntaSelecionada]['texto']),
						Resposta(texto: 'Resposta 1', quandoSelecionado: _responder,),
						Resposta(texto: 'Resposta 2', quandoSelecionado: _responder,),
						Resposta(texto: 'Resposta 3', quandoSelecionado: _responder,),
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