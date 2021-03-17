import 'dart:convert';
import 'package:cursosdev_app/Services/libros_services.dart';
import 'package:cursosdev_app/models/coursesList.dart';
import 'package:cursosdev_app/models/libro_model.dart';
import 'package:cursosdev_app/models/libro_model.dart';
import 'package:cursosdev_app/models/libro_model.dart';
import 'package:cursosdev_app/models/libro_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cursosdev_app/models/news.dart';
import 'package:cursosdev_app/views/read_news_view.dart';
import 'package:cursosdev_app/widgets/secondary_card.dart';
import 'package:http/http.dart' as http;

class RecentTabView extends StatefulWidget {
  @override
  _RecentTabViewState createState() => _RecentTabViewState();
}

class _RecentTabViewState extends State<RecentTabView> {

  final librosService = LibrosServices();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: librosService.getLibros(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }else{
          LibrosList libros = LibrosList.fromJsonList(snapshot.data);
          // print(snapshot.data);
          print(libros.items.first.descripcionCorta);
          return Container(
            child: Text('Hola mundo'),
          );
        }
      },
    );
  }

  Widget listaLibros( List<LibrosResp> lista ){
    return ListView.builder(
      itemCount: lista.length,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var recent = lista[index];

        return Text('hola mundo');
      },
    );
  }
}

  //   return new Scaffold(
  //     body: Container(
  //       child: FutureBuilder(
  //           future: _GetListCourses(),
  //           builder: (BuildContext context, AsyncSnapshot snapshot) {
  //             if (snapshot.data == null) {
  //               return Container(
  //                 child: Center(
  //                   child: Text('Loading...'),
  //                 ),
  //               );
  //             } else {
  //               return ListView.builder(
  //                 itemCount: snapshot.data.length,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return ListTile(
  //                     title: Text(snapshot.data[index].titulo),
  //                   );
  //                 },
  //               );
  //             }
  //           }),
  //     ),
  //   );
  // }
// }
