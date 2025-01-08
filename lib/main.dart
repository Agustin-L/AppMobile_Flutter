import 'package:flutter/material.dart';
import './questao.dart';  

main(){
  
    runApp(PerguntaApp());
    

}

class _PerguntaAppState extends State<PerguntaApp>{

var _perguntaselcionada = 0;

void _responder(){
  setState(() {
    if(_perguntaselcionada == 1){
    _perguntaselcionada--;  
    }
    else{
      _perguntaselcionada++;  
    }
    
  });
  print(_perguntaselcionada);
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
          backgroundColor: const Color.fromARGB(255, 3, 137, 255),
          
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaselcionada]),
            ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: _responder
            ),
            ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: _responder
            ),
            ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: _responder
            ),
          ],
        ),  
        
      ),
      );
  }
  
}
class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }


}









