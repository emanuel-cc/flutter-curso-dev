// To parse this JSON data, do
//
//     final librosResp = librosRespFromJson(jsonString);

import 'dart:convert';

List<LibrosResp> librosRespFromJson(String str) => List<LibrosResp>.from(json.decode(str).map((x) => LibrosResp.fromJson(x)));

String librosRespToJson(List<LibrosResp> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class LibrosList{
  List<LibrosResp> items= [];
  LibrosList();
  LibrosList.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null){
      return;
    }
    for(var item in jsonList){
      final libro = new LibrosResp.fromJson(item);
      //La lista items va a contener toda la lista de categorias mapeadas.
      items.add(libro);
    }
  }
}
class LibrosResp {
    LibrosResp({
        this.id,
        this.codigo,
        this.titulo,
        this.descripcionCorta,
        this.descripcion,
        this.portada,
        this.idioma,
        this.languagesId,
        this.categoriesId,
        this.subcategoriesId,
        this.ruta,
        this.estado,
        this.cupon,
        this.plataforma,
        this.logo,
        this.calificacion,
        this.cantEstudiantes,
        this.instructor,
        this.precio,
        this.precioOferta,
        this.finOferta,
        this.visitas,
        this.megusta,
        this.fecha,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String codigo;
    String titulo;
    String descripcionCorta;
    String descripcion;
    String portada;
    String idioma;
    String languagesId;
    String categoriesId;
    String subcategoriesId;
    String ruta;
    String estado;
    String cupon;
    String plataforma;
    String logo;
    String calificacion;
    String cantEstudiantes;
    String instructor;
    String precio;
    String precioOferta;
    DateTime finOferta;
    String visitas;
    dynamic megusta;
    DateTime fecha;
    DateTime createdAt;
    DateTime updatedAt;

    factory LibrosResp.fromJson(Map<String, dynamic> json) => LibrosResp(
        id: json["id"],
        codigo: json["codigo"],
        titulo: json["titulo"],
        descripcionCorta: json["descripcion_corta"],
        descripcion: json["descripcion"],
        portada: json["portada"],
        idioma: json["idioma"],
        languagesId: json["languages_id"],
        categoriesId: json["categories_id"],
        subcategoriesId: json["subcategories_id"],
        ruta: json["ruta"],
        estado: json["estado"],
        cupon: json["cupon"],
        plataforma: json["plataforma"],
        logo: json["logo"],
        calificacion: json["calificacion"],
        cantEstudiantes: json["cant_estudiantes"] == null ? null : json["cant_estudiantes"],
        instructor: json["instructor"],
        precio: json["precio"],
        precioOferta: json["precio_oferta"],
        finOferta: DateTime.parse(json["finOferta"]),
        visitas: json["visitas"],
        megusta: json["megusta"],
        fecha: DateTime.parse(json["fecha"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "codigo": codigo,
        "titulo": titulo,
        "descripcion_corta": descripcionCorta,
        "descripcion": descripcion,
        "portada": portada,
        "idioma": idioma,
        "languages_id": languagesId,
        "categories_id": categoriesId,
        "subcategories_id": subcategoriesId,
        "ruta": ruta,
        "estado": estado,
        "cupon": cupon,
        "plataforma": plataforma,
        "logo": logo,
        "calificacion": calificacion,
        "cant_estudiantes": cantEstudiantes == null ? null : cantEstudiantes,
        "instructor": instructor,
        "precio": precio,
        "precio_oferta": precioOferta,
        "finOferta": finOferta.toIso8601String(),
        "visitas": visitas,
        "megusta": megusta,
        "fecha": fecha.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
