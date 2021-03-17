class Courses {
  // final int id;
  final String titulo;
  final String descripcioncorta;
  // final String descripcion;
  final String portada;
  // final String ruta;
  final String cupon;
  // final String logo;
  final String calificacion;
  final String instructor;
  final String precio;
  final String preciooferta;
  final String finOferta;
  final String visitas;

  Courses(
    // this.id,
    this.titulo,
    this.descripcioncorta,
    // this.descripcion,
    this.portada,
    // this.ruta,
    this.cupon,
    // this.logo,
    this.calificacion,
    this.instructor,
    this.precio,
    this.preciooferta,
    this.finOferta,
    this.visitas,
  );
//   factory Courses.fromJson(Map<String, dynamic> json) {
//     return Courses(
//           id:json['id'],
//           codigo:json['codigo'],
//           titulo:json['titulo'],
//           descripcion_corta:json['descripcion_corta'],
//           descripcion:json['descripcion'],
//           portada:json['portada'],
//           idioma:json['idioma'],
//           languages_id:json['languages_id'],
//           categories_id:json['categories_id'],
//           subcategories_id:json['subcategories_id'],
//           ruta:json['ruta'],
//           estado:json['estado'],
//           cupon:json['cupon'],
//           plataforma:json['plataforma'],
//           logo:json['logo'],
//           calificacion:json['calificacion'],
//           cant_estudiantes:json['cant_estudiantes'],
//           instructor:json['instructor'],
//           precio:json['precio'],
//           precio_oferta:json['precio_oferta'],
//           finOferta:json['finOferta'],
//           visitas:json['visitas'],
//           megusta:json['megusta'],
//           fecha:json['fecha'],
//           created_at:json['created_at'],
//           updated_at:json['updated_at'],
//     );
//   }

// }

//   Future<List<Courses>> _GetListCourses() async {
//     var response = await http.get(
//         Uri.https('admin.cursosdev.com', 'api/courses/2000'),
//         headers: {'APP_KEY_API': "CbcCbNRRyY47T0CJ7Rev"});

//     if (response.statusCode == 200) {
//       print(response.body);
//       var jsonData = json.decode(response.body);
//       List<Courses> _ListCourses = [];

//       for (var items in jsonData) {
//         Courses courses = Courses(
//             items['id'],
//             items['codigo'],
//             items['titulo'],
//             items['descripcion_corta'],
//             items['descripcion'],
//             items['portada'],
//             items['idioma'],
//             items['languages_id'],
//             items['categories_id'],
//             items['subcategories_id'],
//             items['ruta'],
//             items['estado'],
//             items['cupon'],
//             items['plataforma'],
//             items['logo'],
//             items['calificacion'],
//             items['cant_estudiantes'],
//             items['instructor'],
//             items['precio'],
//             items['precio_oferta'],
//             items['finOferta'],
//             items['visitas'],
//             items['megusta'],
//             items['fecha'],
//             items['created_at'],
//             items['updated_at']);
//         _ListCourses.add(courses);
//       }
//       print(_ListCourses.length);
//       // return Courses.fromJson(responseJson);
//     } else {
//       throw Exception("Falló la Conexion");
//     }
//   }
// }

// List<Courses> popularList = [
//   Courses(
//   id:json['id'],
//   codigo:json['codigo'],
//   titulo:json['titulo'],
//   descripcion_corta:json['descripcion_corta'],
//   descripcion:json['descripcion'],
//   portada:json['portada'],
//   idioma:json['idioma'],
//   languages_id:json['languages_id'],
//   categories_id:json['categories_id'],
//   subcategories_id:json['subcategories_id'],
//   ruta:json['ruta'],
//   estado:json['estado'],
//   cupon:json['cupon'],
//   plataforma:json['plataforma'],
//   logo:json['logo'],
//   calificacion:json['calificacion'],
//   cant_estudiantes:json['cant_estudiantes'],
//   instructor:json['instructor'],
//   precio:json['precio'],
//   precio_oferta:json['precio_oferta'],
//   finOferta:json['finOferta'],
//   visitas:json['visitas'],
//   megusta:json['megusta'],
//   fecha:json['fecha'],
//   created_at:json['created_at'],
//   updated_at:json['updated_at'],
// );
// ];
}
