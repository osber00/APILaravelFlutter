import 'package:flutter/material.dart';

class PublicacionScreen extends StatelessWidget {

  const PublicacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publicación'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Oscar Bertel P',
                textCapitalization: TextCapitalization.words,
                onChanged: (value){
                  print('value: $value');
                },
              ),
            ],
          ),
        ),
      ),
    );
  } 
}