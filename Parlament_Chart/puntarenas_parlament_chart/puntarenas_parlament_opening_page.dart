///Alajuela_Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:flutternuevapruebacharts/Parlament_Chart/puntarenas_parlament_chart/puntarenas_hombres_parlament_page.dart';
import 'package:flutternuevapruebacharts/Parlament_Chart/puntarenas_parlament_chart/puntarenas_mujeres_parlament_page.dart';
import 'package:flutternuevapruebacharts/Parlament_Chart/puntarenas_parlament_chart/puntarenas_poblacion_total_parlament_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PuntarenasParlamentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Población total por condición y tipo de discapacidad, según el grupo de edad',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlue,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.male),
            title: Text('Hombres', style: TextStyle(fontSize: 25),),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PuntarenasHombresParlamentChart.withSampleData()),
            )},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.female),
            title: Text('Mujeres', style: TextStyle(fontSize: 25),),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PuntarenasMujeresParlamentChart.withSampleData()),
            )},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.users),
            title: Text('Población Total', style: TextStyle(fontSize: 25),),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PuntarenasPoblacionTotalParlamentChart.withSampleData()),
            )},
          ),
        ],
      ),
    );

  }
}