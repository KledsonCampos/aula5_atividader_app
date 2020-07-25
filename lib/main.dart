
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final words = nouns.take(50);
    var ListaPalavra = [];
    words.forEach((element) {
      ListaPalavra.add(element);
    });
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(child: ListView.builder(
                //padding: EdgeInsets.all(16.0),
                itemCount: ListaPalavra.length,
                itemBuilder: (context, i){
                  return ListTile(
                    title: Text(ListaPalavra[i]),
                    subtitle: Text('Quantidade de Silabas: '+syllables(ListaPalavra[i]).toString()),
                  );
                },
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
