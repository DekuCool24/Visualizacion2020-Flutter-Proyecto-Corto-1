import 'package:flutter/material.dart';

///ImagePage
///
/// This page displays the image that is the credits.
class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage(
        'assets/images/creditos.jpg'); //<- Creates an object that fetches an image.
    var image = new Image(image: assetsImage, fit: BoxFit.cover);
    return Scaffold(
      appBar: AppBar(
        title: Text('Créditos'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
          child: new Column(children: <Widget>[
            image,
            new RaisedButton(
              elevation: 5.0,
              padding: const EdgeInsets.all(8.0),
              textColor: Colors.black,
              color: Colors.deepOrangeAccent,
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text(
                "Regresar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ])),
    );
  }
}
