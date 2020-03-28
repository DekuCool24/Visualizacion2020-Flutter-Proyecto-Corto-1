///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Mujeres_Page.dart';
import 'Poblacion_Total_Page.dart';
import 'Image_Page.dart';

class HomePage extends StatelessWidget {
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
              color: Colors.green,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.male),
            title: Text('Hombres'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.female),
            title: Text('Mujeres'),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MujeresPage()),
            )},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.users),
            title: Text('Población Total'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoblacionTotalPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.idCard),
            title: Text('Créditos'),
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