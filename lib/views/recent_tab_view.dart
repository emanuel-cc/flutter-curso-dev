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
    final size = MediaQuery.of(context).size;

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
            height: size.height * 0.7,
            child: listaLibros(context,libros.items)
          );
        }
      },
    );
  }

  Widget listaLibros( BuildContext context, List<LibrosResp> lista ){
    final size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: lista.length,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var recent = lista[index];

        return Card(
          child: Row(
            children: [
              Container(
                width: size.width * 0.4,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      '${recent.portada}'
                    )
                  )
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: Text(
                  "${ recent.descripcionCorta }",
                  overflow: TextOverflow.ellipsis
                  
                ),
              )
            ],
          ),
        );
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
