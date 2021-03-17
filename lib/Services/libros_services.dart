import 'dart:convert';

import 'package:cursosdev_app/models/libro_model.dart';
import 'package:http/http.dart' as http;

class LibrosServices{


  Future<List<Map<String,dynamic>>> getLibros()async{
    Uri url = Uri.https('admin.cursosdev.com', '/api/courses');
    final resp = await http.get(
      url,
      headers: {
        'APP_KEY_API': 'CbcCbNRRyY47T0CJ7Rev'
      }
    );

    final decodedResp = json.decode(resp.body);
    

    return decodedResp;
  }

}