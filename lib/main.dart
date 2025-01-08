



import 'package:flutter/material.dart';

main(){

    runApp(PergutaApp());

}


class PergutaApp extends StatelessWidget {

var perguntaselcionada = 1;

void responder(){
  perguntaselcionada++;
  print(perguntaselcionada);
}

void Function() funcaoqueretorneoutrafuncao(){
  return(){
    print('Pergunta repondidda #02');
  }; 
}
  @override  
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual e teu celular',
      'qual a e sua,'
    ];
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
          backgroundColor: Colors.black,
          
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaselcionada]),
            ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: responder,
            ),
            ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: (){('reposta 2 selecionada');}
            ),
            ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: funcaoqueretorneoutrafuncao
            ),
          ],
        ),  
        
      ),
      );
  }
  
}









