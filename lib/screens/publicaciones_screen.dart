import 'package:api_laravel/models/publicacion_model.dart';
import 'package:api_laravel/providers/publicaciones_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class PublicacionesScreen extends StatelessWidget {

  const PublicacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final provedorPublicaciones = Provider.of<PublicacionesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Publicaciones'),
      ),
      body: FutureBuilder(
        future: provedorPublicaciones.publicaciones(),
        builder: (BuildContext context, AsyncSnapshot<List<PublicacionModel>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if(snapshot.hasError){
            return const Center(child: Text('Error en la petición'));
          }

          final publicacion = snapshot.data!;

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: publicacion.length,
            itemBuilder: (BuildContext context, int index) {
              return MiCardWidget(
                imageUrl: 'https://th.bing.com/th/id/R.b52d19e714aad68a1b91a9fd0094aa3e?rik=LTZMFv%2b6xCxiyQ&riu=http%3a%2f%2f2.bp.blogspot.com%2f-DdxzQg9NHl4%2fU3I5LfAWHyI%2fAAAAAAACMkA%2fpQ0HI-pQk08%2fs1600%2fimagenes-gratis-de-paisajes-y-fondos-para-computadoras-tablets-y-ipad-fotos-lindas-free-amazing-photos%2b(6).jpg&ehk=xGj87q8O58Mmv5lXXyVARKq8n%2fh3CBhM78dp%2fRBlWkM%3d&risl=&pid=ImgRaw&r=0',
                title: publicacion[index].titulo,
                onPressed: ()=> Navigator.pushNamed(context, 'publicacion')
                );
            },
          );

        },
      ),
    );
  }
}