import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
    const Resposta({super.key, this.texto = "", required this.quandoSelecionado});
    final String texto;
    final void Function() quandoSelecionado;

    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: quandoSelecionado,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                        texto,
                        style: const TextStyle(color: Colors.white),
                    )
                ),
        );
    }
}