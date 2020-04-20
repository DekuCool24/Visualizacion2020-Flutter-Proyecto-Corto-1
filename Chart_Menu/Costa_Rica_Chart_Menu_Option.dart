///Chart_Menu_Option
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:flutternuevapruebacharts/Bar_Chart/costa_rica_bar_chart/costa_rica_bar_opening_page.dart';
import 'package:flutternuevapruebacharts/Bubble_Chart/Costa_Rica_Bubble_Chart/Costa_Rica_Opening_Page.dart';
import 'package:flutternuevapruebacharts/Parlament_Chart/costa_rica_parlament_chart/costa_rica_parlament_opening_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CostaRicaMenuChartOptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Escoja el tipo de visualización',
              style: TextStyle(color: Colors.white, fontSize: 25, ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.circle),
            title: Text('Gráfico Burbujas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CostaRicaHomePage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.chartBar),
            title: Text('Gráfico de Barra', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CostaRicaBarHomePage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.chartPie),
            title: Text('Gráfico Parlamentario', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CostaRicaParlamentHomePage()),
              )
            },
          ),
        ],
      ),
    );

  }
}