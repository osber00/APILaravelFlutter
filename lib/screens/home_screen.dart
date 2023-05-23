import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
         child: ElevatedButton(
          onPressed: ()=> Navigator.pushNamed(context, 'publicaciones'),
          child: const Text('Publicaciones')
         ),
      ),
    );
  }
}