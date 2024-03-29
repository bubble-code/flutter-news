import 'package:flutter/material.dart';
import 'package:noticias/main.dart';
import 'package:noticias/vista/home.dart';
import 'package:flutter_star_rating/flutter_star_rating.dart';
import 'package:shimmer/shimmer.dart';

class BodyAll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyAll();
}

class _BodyAll extends State<BodyAll> {
  @override
  void initState() {
    super.initState();
  }

  final int ctn = 2;
  static List<Map<String, String>> prensa = [
    {
      "nombre": "RT Noticias",
      "url": "https://actualidad.rt.com/feeds/all.rss",
      "img": "iconos/rt.png",
    },
    {
      "nombre": "CNN Noticias",
      "url": "http://rss.cnn.com/rss/edition_world.rss",
      "img": "iconos/cnn.png",
    },
    {
      "nombre": "TeleSur Noticias",
      "url": "https://www.telesurtv.net/rss/RssPortada.html",
      "img": "iconos/telesur.png",
    },
    {
      "nombre": "El Mundo Noticias",
      "url": "https://e00-elmundo.uecdn.es/elmundo/rss/portada.xml",
      "img": "iconos/elmundo.png",
    },
    {
      "nombre": "RTVE Noticias",
      "url": "http://api2.rtve.es/rss/temas_noticias.xml",
      "img": "iconos/rtve.jpg",
    },
    {
      "nombre": "Extremadura Noticias",
      "url": "https://www.hoy.es/rss/2.0/portada",
      "img": "iconos/hoy.jpg",
    },
    {
      "nombre": "CubaDebate",
      "url": "http://www.cubadebate.cu/feed/",
      "img": "iconos/cubadebate.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //     mainAxisSize: MainAxisSize.min,
        // children: <Widget>[
        // Container(
        //   margin: EdgeInsets.all(10.0),
        //   child: Text('Noticias del Dia'),
        // ),
        ListView.builder(
      itemCount: prensa.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, int index) {
        return Card(
          elevation: 8,
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(7, 7, 7, .75)),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              leading: Container(
                padding: EdgeInsets.only(
                  right: 12.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Container(
                  width: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(prensa.elementAt(index)['img']),

                      // fit: BoxFit.fitWidth,
                    ),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              title: Text(
                  prensa.elementAt(index)['nombre'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    // flex: 1,
                    child: StarRating(
                          rating: 3,
                          starConfig: StarConfig(
                            size: 20,
                          ),
                        ),
                    // child: Container(
                    //   child: Shimmer.fromColors(
                    //     baseColor: Colors.yellow,
                    //     highlightColor: Colors.transparent,
                    //     period: Duration(seconds: 3),
                    //     child: StarRating(
                    //       rating: 3,
                    //       starConfig: StarConfig(
                    //         size: 20,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        title: prensa.elementAt(index)['nombre'],
                        url: prensa.elementAt(index)['url'],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
    // ],
    // );
  }
}

// ListView.builder(
//             itemCount: prensa.length,
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             itemBuilder: (context, int index){
//               return Card(
//                 elevation: 8,
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 10,
//                   vertical: 6,
//                 ),
//                 child: Container(
//                   decoration:
//                       BoxDecoration(color: Color.fromRGBO(7, 7, 7, .75)),
//                   child: ListTile(
//                     contentPadding: EdgeInsets.symmetric(
//                       vertical: 10,
//                       horizontal: 20,
//                     ),
//                     leading: Container(
//                       padding: EdgeInsets.only(
//                         right: 12.0,
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             width: 1.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       child: Container(
//                         width: 50,
//                         alignment: Alignment.centerLeft,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: ExactAssetImage(prensa.elementAt(index)['img']),

//                             // fit: BoxFit.fitWidth,
//                           ),
//                           border: Border.all(
//                             color: Colors.black12,
//                           ),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                     ),

//                     title: Text(
//                       prensa.elementAt(index)['nombre'],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Row(
//                       children: <Widget>[
//                         Expanded(
//                           // flex: 1,
//                           child: Container(
//                             child: StarRating(
//                               rating: 3,
//                               starConfig: StarConfig(
//                                 size: 20,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     trailing: IconButton(
//                       icon: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => MyHomePage(
//                               title: prensa.elementAt(index)['nombre'],
//                               url: prensa.elementAt(index)['url'],
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               );
//             },
//           );
