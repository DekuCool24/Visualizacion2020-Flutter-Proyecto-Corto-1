import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HerediaHombresBarChart extends StatelessWidget {
  List<charts.Series> glassesList;
  List<charts.Series> hearList;
  List<charts.Series> talkList;
  List<charts.Series> walkList;
  List<charts.Series> armList;
  List<charts.Series> intellectualList;
  List<charts.Series> mentalList;
  List<charts.Series> noneList;
  final bool animate;

  HerediaHombresBarChart(this.glassesList, this.hearList, this.talkList,
      this.walkList, this.armList, this.intellectualList,
      this.mentalList, this.noneList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory HerediaHombresBarChart.withSampleData() {
    return new HerediaHombresBarChart(
      _glassesData(),
      _hearData(),
      _talkData(),
      _walkData(),
      _armData(),
      _intellectualData(),
      _mentalData(),
      _noneData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 8,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff1976d2),
                bottom: TabBar(indicatorColor: Color(0xff9962D0), tabs: [
                  Tab(
                    icon: Icon(FontAwesomeIcons.glasses),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.assistiveListeningSystems),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.signLanguage),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.wheelchair),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.hands),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.user),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.brain),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.walking),
                  ),
                ]),
                title: Text('Hombres'),
              ),
              body: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad para ver aún con los anteojos o lentes puestos',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              glassesList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad para oir',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              hearList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacitad para hablar',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              talkList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad para caminar o subir gradas',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              walkList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad para utilizar brazos o manos',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              armList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad del tipo intelectual',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              intellectualList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Discapacidad del tipo mental',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              mentalList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'No tiene ninguna discapacidad',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.BarChart(
                              noneList,
                              animate: animate,
                            ),
                          ),
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _glassesData() {
    final glasses = [
      new peopleData(06, Color(0xffac75d5), '0-14'),
      new peopleData(14, Color(0xffff0066), '15-29'),
      new peopleData(48, Color(0xff2f5496), '30-59'),
      new peopleData(09, Color(0xff00b050), '60-64'),
      new peopleData(12, Color(0xffffbf00), '65-74'),
      new peopleData(11, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Glasses',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: glasses,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _hearData() {
    final hear = [
      new peopleData(04, Color(0xffac75d5), '0-14'),
      new peopleData(09, Color(0xffff0066), '15-29'),
      new peopleData(29, Color(0xff2f5496), '30-59'),
      new peopleData(07, Color(0xff00b050), '60-64'),
      new peopleData(20, Color(0xffffbf00), '65-74'),
      new peopleData(31, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Hear',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: hear,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _talkData() {
    final talk = [
      new peopleData(24, Color(0xffac75d5), '0-14'),
      new peopleData(21, Color(0xffff0066), '15-29'),
      new peopleData(28, Color(0xff2f5496), '30-59'),
      new peopleData(05, Color(0xff00b050), '60-64'),
      new peopleData(09, Color(0xffffbf00), '65-74'),
      new peopleData(14, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Talk',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: talk,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _walkData() {
    final walk = [
      new peopleData(03, Color(0xffac75d5), '0-14'),
      new peopleData(08, Color(0xffff0066), '15-29'),
      new peopleData(38, Color(0xff2f5496), '30-59'),
      new peopleData(09, Color(0xff00b050), '60-64'),
      new peopleData(17, Color(0xffffbf00), '65-74'),
      new peopleData(24, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Walk',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: walk,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _armData() {
    final arm = [
      new peopleData(04, Color(0xffac75d5), '0-14'),
      new peopleData(13, Color(0xffff0066), '15-29'),
      new peopleData(43, Color(0xff2f5496), '30-59'),
      new peopleData(09, Color(0xff00b050), '60-64'),
      new peopleData(15, Color(0xffffbf00), '65-74'),
      new peopleData(16, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Arm',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: arm,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _intellectualData() {
    final intellectual = [
      new peopleData(27, Color(0xffac75d5), '0-14'),
      new peopleData(34, Color(0xffff0066), '15-29'),
      new peopleData(31, Color(0xff2f5496), '30-59'),
      new peopleData(02, Color(0xff00b050), '60-64'),
      new peopleData(02, Color(0xffffbf00), '65-74'),
      new peopleData(03, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Intellectual',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: intellectual,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _mentalData() {
    final mental = [
      new peopleData(11, Color(0xffac75d5), '0-14'),
      new peopleData(20, Color(0xffff0066), '15-29'),
      new peopleData(43, Color(0xff2f5496), '30-59'),
      new peopleData(04, Color(0xff00b050), '60-64'),
      new peopleData(09, Color(0xffffbf00), '65-74'),
      new peopleData(12, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'Mental',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: mental,
      )
    ];
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<peopleData, String>> _noneData() {
    final none = [
      new peopleData(26, Color(0xffac75d5), '0-14'),
      new peopleData(29, Color(0xffff0066), '15-29'),
      new peopleData(38, Color(0xff2f5496), '30-59'),
      new peopleData(03, Color(0xff00b050), '60-64'),
      new peopleData(03, Color(0xffffbf00), '65-74'),
      new peopleData(01, Color(0xffdf6613), '75+'),
    ];

    return [
      new charts.Series<peopleData, String>(
        id: 'None',
        colorFn: (peopleData sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        domainFn: (peopleData sales, _) => sales.test,
        measureFn: (peopleData sales, _) => sales.sales,
        data: none,
      )
    ];
  }

}

/// Sample ordinal data type.
class peopleData {
  final int sales;
  final Color colorvar;
  final String test;

  peopleData(this.sales, this.colorvar, this.test);
}