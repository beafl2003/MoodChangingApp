import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MinhaHome extends StatefulWidget {
  const MinhaHome({super.key});

  @override
  State<MinhaHome> createState() => _MinhaHomeState();
}

class _MinhaHomeState extends State<MinhaHome> {
  var listaCor = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.amber,
    Colors.blue,
    Colors.green,
  ];

  var listaIcones = [
    Icons.mood_bad,
    Icons.mood,
  ];

  var corIcone = Colors.grey;
  var iconePrincipal = Icons.mood_bad;
  var numeroAleatorio = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MINHA HOME"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: [
              const Text("Mude o dia de alguém",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  )),
              const Text("O deixe mais colorido",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  )),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Icon(
                  iconePrincipal,
                  size: 60,
                  color: corIcone,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: funcao, child: Text("Trocar a cor")),
                  ElevatedButton(
                      onPressed: trocaIcone, child: Text("Trocar Sentimento"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void funcao() {
    var posicaoCor = numeroAleatorio.nextInt(listaCor.length);
    setState(() {
      corIcone = listaCor[posicaoCor];
    });
  }

  // void trocaIcone() {
  //   var posicaoIcone = numeroAleatorio.nextInt(listaIcones.length);
  //   setState(() {
  //     iconePrincipal = listaIcones[posicaoIcone];
  //   });
  // }

  void trocaIcone() {
    if (iconePrincipal == Icons.mood_bad) {
      setState(() {
        iconePrincipal = listaIcones[1];
      });
    } else {
      setState(() {
        iconePrincipal = listaIcones[0];
      });
    }
    ;
  }
}
