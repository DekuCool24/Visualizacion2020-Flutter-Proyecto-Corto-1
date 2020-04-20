///Chart_Menu_Option
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:flutternuevapruebacharts/Bar_Chart/guanacaste_bar_chart/guanacaste_bar_opening_page.dart';
import 'package:flutternuevapruebacharts/Bubble_Chart/Guanacaste_Bubble_Chart/Guanacaste_Opening_Page.dart';
import 'package:flutternuevapruebacharts/Parlament_Chart/guanacaste_parlament_chart/guanacaste_parlament_opening_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class GuanacasteMenuChartOptionPage extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => GuanacasteHomePage()),
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
                MaterialPageRoute(builder: (context) => GuanacasteBarHomePage()),
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
                MaterialPageRoute(builder: (context) => GuanacasteParlamentHomePage()),
              )
            },
          ),
        ],
      ),
    );

  }
}