import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CartagoHombresParlamentChart extends StatelessWidget {
  List<charts.Series> glassesList;
  List<charts.Series> hearList;
  List<charts.Series> talkList;
  List<charts.Series> walkList;
  List<charts.Series> armList;
  List<charts.Series> intellectualList;
  List<charts.Series> mentalList;
  List<charts.Series> noneList;
  final bool animate;

  CartagoHombresParlamentChart(this.glassesList, this.hearList, this.talkList,
      this.walkList, this.armList, this.intellectualList,
      this.mentalList, this.noneList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory CartagoHombresParlamentChart.withSampleData() {
    return new CartagoHombresParlamentChart(
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
                            child: new charts.PieChart(
                                glassesList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]
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
                            child: new charts.PieChart(
                                hearList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                talkList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                walkList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                armList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                intellectualList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                mentalList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,

                                )]


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
                            child: new charts.PieChart(
                                noneList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.top,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,
                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,
                                )]
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
      new peopleData(08, Color(0xffac75d5), '0-14'),
      new peopleData(14, Color(0xffff0066), '15-29'),
      new peopleData(46, Color(0xff2f5496), '30-59'),
      new peopleData(8, Color(0xff00b050), '60-64'),
      new peopleData(12, Color(0xffffbf00), '65-74'),
      new peopleData(12, Color(0xffdf6613), '75+'),
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
      new peopleData(05, Color(0xffac75d5), '0-14'),
      new peopleData(08, Color(0xffff0066), '15-29'),
      new peopleData(31, Color(0xff2f5496), '30-59'),
      new peopleData(07, Color(0xff00b050), '60-64'),
      new peopleData(19, Color(0xffffbf00), '65-74'),
      new peopleData(30, Color(0xffdf6613), '75+'),
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
      new peopleData(27, Color(0xffac75d5), '0-14'),
      new peopleData(17, Color(0xffff0066), '15-29'),
      new peopleData(28, Color(0xff2f5496), '30-59'),
      new peopleData(04, Color(0xff00b050), '60-64'),
      new peopleData(10, Color(0xffffbf00), '65-74'),
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
      new peopleData(04, Color(0xffac75d5), '0-14'),
      new peopleData(07, Color(0xffff0066), '15-29'),
      new peopleData(38, Color(0xff2f5496), '30-59'),
      new peopleData(10, Color(0xff00b050), '60-64'),
      new peopleData(19, Color(0xffffbf00), '65-74'),
      new peopleData(22, Color(0xffdf6613), '75+'),
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
      new peopleData(06, Color(0xffac75d5), '0-14'),
      new peopleData(11, Color(0xffff0066), '15-29'),
      new peopleData(39, Color(0xff2f5496), '30-59'),
      new peopleData(09, Color(0xff00b050), '60-64'),
      new peopleData(17, Color(0xffffbf00), '65-74'),
      new peopleData(18, Color(0xffdf6613), '75+'),
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
      new peopleData(28, Color(0xffac75d5), '0-14'),
      new peopleData(33, Color(0xffff0066), '15-29'),
      new peopleData(30, Color(0xff2f5496), '30-59'),
      new peopleData(02, Color(0xff00b050), '60-64'),
      new peopleData(03, Color(0xffffbf00), '65-74'),
      new peopleData(04, Color(0xffdf6613), '75+'),
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
      new peopleData(42, Color(0xff2f5496), '30-59'),
      new peopleData(05, Color(0xff00b050), '60-64'),
      new peopleData(10, Color(0xffffbf00), '65-74'),
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
      new peopleData(30, Color(0xffff0066), '15-29'),
      new peopleData(36, Color(0xff2f5496), '30-59'),
      new peopleData(02, Color(0xff00b050), '60-64'),
      new peopleData(03, Color(0xffffbf00), '65-74'),
      new peopleData(02, Color(0xffdf6613), '75+'),
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