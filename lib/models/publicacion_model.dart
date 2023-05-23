import 'dart:convert';

class PublicacionModel {
    int id;
    String titulo;
    String slug;
    String contenido;
    String? imagen;
    int estado;
    int tipopublicacionId;
    DateTime createdAt;
    DateTime updatedAt;

    PublicacionModel({
        required this.id,
        required this.titulo,
        required this.slug,
        required this.contenido,
        this.imagen,
        required this.estado,
        required this.tipopublicacionId,
        required this.createdAt,
        required this.updatedAt,
    });

    factory PublicacionModel.fromJson(String str) => PublicacionModel.fromMap(json.decode(str));


    factory PublicacionModel.fromMap(Map<String, dynamic> json) => PublicacionModel(
        id: json["id"],
        titulo: json["titulo"],
        slug: json["slug"],
        contenido: json["contenido"],
        imagen: json["imagen"],
        estado: json["estado"],
        tipopublicacionId: json["tipopublicacion_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );
}