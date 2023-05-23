import 'dart:convert';

import 'package:flutter/material.dart';
import '../constants/constantes.dart';
import 'package:http/http.dart' as http;
import 'package:api_laravel/models/publicacion_model.dart';


class PublicacionesProvider extends ChangeNotifier {
  List<PublicacionModel> listaPublicaciones = [];


  Future<List<PublicacionModel>> publicaciones() async{
    final url = Uri.http(urlBase, urlPublicaciones);
    final respuesta = await http.get(url);
    if(respuesta.statusCode == 200){
      final respuestaJson = jsonDecode(respuesta.body);
      //print(respuestaJson[0]);
      return listaPublicaciones = List<PublicacionModel>.from(respuestaJson.map((data) => PublicacionModel.fromMap(data)));
    }else{
      throw Exception('Error en la conexion');
    }

  }

}