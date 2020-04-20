///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Alajuela_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Cartago_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Costa_Rica_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Guanacaste_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Heredia_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Limon_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/Puntarenas_Chart_Menu_Option.dart';
import 'package:flutternuevapruebacharts/Chart_Menu/San_Jose_Chart_Menu_Option.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Image_Page.dart';

class HomePageNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Población total por condición y tipo de discapacidad, según provincia, sexo y grupos de edad',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.building),
            title: Text('San José', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SanJoseMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.plane),
            title: Text('Alajuela', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlajuelaMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.church),
            title: Text('Cartago', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartagoMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.seedling),
            title: Text('Heredia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HerediaMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.umbrellaBeach),
            title: Text('Guanacaste', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GuanacasteMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.fish),
            title: Text('Puntarenas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PuntarenasMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.ship),
            title: Text('Limón', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LimonMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Costa Rica', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CostaRicaMenuChartOptionPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.addressBook),
            title: Text('Creditos', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagePage()),
              )
            },
          ),
        ],
      ),
    );

  }
}