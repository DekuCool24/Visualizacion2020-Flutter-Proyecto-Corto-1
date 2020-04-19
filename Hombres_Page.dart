import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HombresPage extends StatefulWidget {
  final Widget child;

  HombresPage({Key key, this.child}) : super(key: key);

  _HombresPageState createState() => _HombresPageState();
}

class _HombresPageState extends State<HombresPage> {
  List<charts.Series<GlassesData, int>> _seriesGlassesData;
  List<charts.Series<HearData, int>> _seriesHearData;
  List<charts.Series<TalkData, int>> _seriesTalkData;
  List<charts.Series<WalkData, int>> _seriesWalkData;
  List<charts.Series<ArmData, int>> _seriesArmData;
  List<charts.Series<IntellectualData, int>> _seriesIntellectualData;
  List<charts.Series<MentalData, int>> _seriesMentalData;
  List<charts.Series<NoneData, int>> _seriesNoneData;

  ///_generateData()
  ///
  /// Genera los datos de los gráficos
  _generateData() {
    /// Para ver aún con los anteojos o lentes puestos
    ///
    /// This data is for the first graphic.
    /// OneGlassesData: all the data for the case: De 0 a 14 años.
    final OneGlassesData = [
      new GlassesData(7241, 0.06, 04.0, Color(0xff3366cc)),
    ];

    /// TwoGlassesData: all data for the case: De 15 a 29 años.
    final TwoGlassesData = [
      new GlassesData(13164, 0.11, 06.0, Color(0xfffdbe19)),
    ];

    /// ThreeGlassesData: all data for the case: De 30 a 59 años.
    final ThreeGlassesData = [
      new GlassesData(52349, 0.46, 29.0, Color(0xff109618))
    ];

    /// FourGlassesData: all data for the case: De 60 a 64 años.
    final FourGlassesData = [
      new GlassesData(10085, 0.08, 05.0, Color(0xff990099)),
    ];

    /// FiveGlassesData: all data for the case: De 65 a 74 años.
    final FiveGlassesData = [
      new GlassesData(15406, 0.13, 08.0, Color(0xffff0067)),
    ];

    /// SixGlassesData: all data for the case: De 75 a 89 años.
    final SixGlassesData = [
      new GlassesData(12730, 0.11, 07.0, Color(0xffff0000)),
    ];

    /// SevenGlassesData: all data for the case: De 90 años y más.
    final SevenGlassesData = [
      new GlassesData(1638, 0.01, 01.0, Color(0xff000000)),
    ];


     /// Para oir
    ///
    /// This data is for the first graphic.
    /// OneHearData: all the data for the case: De 0 a 14 años.
    final OneHearData = [
      new HearData(1844, 0.04, 04.0, Color(0xff3366cc)),
    ];

    /// TwoHearData: all data for the case: De 15 a 29 años.
    final TwoHearData = [
      new HearData(2705, 0.07, 07.0, Color(0xfffdbe19)),
    ];

    /// ThreeHearData: all data for the case: De 30 a 59 años.
    final ThreeHearData = [
      new HearData(10727, 0.28, 28.0, Color(0xff109618))
    ];

    /// FourHearData: all data for the case: De 60 a 64 años.
    final FourHearData = [
      new HearData( 2963, 0.07, 07.0, Color(0xff990099)),
    ];

    /// FiveHearData: all data for the case: De 65 a 74 años.
    final FiveHearData = [
      new HearData( 7145, 0.19, 19.0, Color(0xffff0067)),
    ];

    /// SixHearData: all data for the case: De 75 a 89 años.
    final SixHearData = [
      new HearData( 9993, 0.26, 26.0, Color(0xffff0000)),
    ];

    /// SevenHearData: all data for the case: De 90 años y más.
    final SevenHearData = [
      new HearData( 1863, 0.05, 05.0, Color(0xff000000)),
    ];

    ///Para hablar
    ///
    /// This data is for the first graphic.
    /// OneTalkData: all the data for the case: De 0 a 14 años.
    final OneTalkData = [
      new TalkData( 4748, 0.28, 29.0, Color(0xff3366cc)),
    ];

    /// TwoTalkData: all data for the case: De 15 a 29 años.
    final TwoTalkData = [
      new TalkData(2870, 0.17, 18.0, Color(0xfffdbe19)),
    ];

    /// ThreeTalkData: all data for the case: De 30 a 59 años.
    final ThreeTalkData = [
      new TalkData( 4633, 0.27, 28.0, Color(0xff109618))
    ];

    /// FourTalkData: all data for the case: De 60 a 64 años.
    final FourTalkData = [
      new TalkData(680, 0.04, 04.0, Color(0xff990099)),
    ];

    /// FiveTalkData: all data for the case: De 65 a 74 años.
    final FiveTalkData = [
      new TalkData( 1336, 0.08, 08.0, Color(0xffff0067)),
    ];

    /// SixTalkData: all data for the case: De 75 a 89 años.
    final SixTalkData = [
      new TalkData(1923, 0.11, 12.0, Color(0xffff0000)),
    ];

    /// SevenHearData: all data for the case: De 90 años y más.
    final SevenTalkData = [
      new TalkData(405, 0.02, 02.0, Color(0xff000000)),
    ];

    ///Para caminar o subir gradas
    ///
    /// This data is for the first graphic.
    /// OneWalkData: all the data for the case: De 0 a 14 años.
    final OneWalkData = [
      new WalkData(2523, 0.03, 03.0, Color(0xff3366cc)),
    ];

    /// TwoWalkData: all data for the case: De 15 a 29 años.
    final TwoWalkData = [
      new WalkData(4800, 0.07, 07.0, Color(0xfffdbe19)),
    ];

    /// ThreeWalkData: all data for the case: De 30 a 59 años.
    final ThreeWalkData = [
      new WalkData(24450, 0.38, 36.0, Color(0xff109618))
    ];

    /// FourWalkData: all data for the case: De 60 a 64 años.
    final FourWalkData = [
      new WalkData(6209, 0.09, 08.0, Color(0xff990099)),
    ];

    /// FiveWalkData: all data for the case: De 65 a 74 años.
    final FiveWalkData = [
      new WalkData(11381, 0.17, 16.0, Color(0xffff0067)),
    ];

    /// SixWalkData: all data for the case: De 75 a 89 años.
    final SixWalkData = [
      new WalkData(1923, 0.02, 01.0, Color(0xffff0000)),
    ];

    /// SevenWalkData: all data for the case: De 90 años y más.
    final SevenWalkData = [
      new WalkData(405, 0.006, 06.0, Color(0xff000000)),
    ];

    ///Para utilizar brazos o manos
    ///
    /// This data is for the first graphic.
    /// OneArmData: all the data for the case: De 0 a 14 años.
    final OneArmData = [
      new ArmData(1228, 0.05, 04.0, Color(0xff3366cc)),
    ];

    /// TwoArmData: all data for the case: De 15 a 29 años.
    final TwoArmData = [
      new ArmData(2465, 0.10, 09.0, Color(0xfffdbe19)),
    ];

    /// ThreeArmData: all data for the case: De 30 a 59 años.
    final ThreeArmData = [
      new ArmData(9601, 0.41, 32.0, Color(0xff109618))
    ];

    /// FourArmData: all data for the case: De 60 a 64 años.
    final FourArmData = [
      new ArmData(2179, 0.09, 07.0, Color(0xff990099)),
    ];

    /// FiveArmData: all data for the case: De 65 a 74 años.
    final FiveArmData = [
      new ArmData(3537, 0.15, 11.0, Color(0xffff0067)),
    ];

    /// SixArmData: all data for the case: De 75 a 89 años.
    final SixArmData = [
      new ArmData(3456, 0.15, 11.0, Color(0xffff0000)),
    ];

    /// SevenArmData: all data for the case: De 90 años y más.
    final SevenArmData = [
      new ArmData(535, 0.02, 01.0, Color(0xff000000)),
    ];

    ///Del tipo intelectual
    ///
    /// This data is for the first graphic.
    /// OneIntellectualData: all the data for the case: De 0 a 14 años.
    final OneIntellectualData = [
      new IntellectualData(5686, 0.28, 26.0, Color(0xff3366cc)),
    ];

    /// TwoIntellectualData: all data for the case: De 15 a 29 años.
    final TwoIntellectualData = [
      new IntellectualData(6587, 0.32, 30.0, Color(0xfffdbe19)),
    ];

    /// ThreeIntellectualData: all data for the case: De 30 a 59 años.
    final ThreeIntellectualData = [
      new IntellectualData(5975, 0.29, 27.0, Color(0xff109618))
    ];

    /// FourIntellectualData: all data for the case: De 60 a 64 años.
    final FourIntellectualData = [
      new IntellectualData(407, 0.02, 02.0, Color(0xff990099)),
    ];

    /// FiveIntellectualData: all data for the case: De 65 a 74 años.
    final FiveIntellectualData = [
      new IntellectualData(638, 0.03, 03.0, Color(0xffff0067)),
    ];

    /// SixIntellectualData: all data for the case: De 75 a 89 años.
    final SixIntellectualData = [
      new IntellectualData(574, 0.02, 02.0, Color(0xffff0000)),
    ];

    /// SevenIntellectualData: all data for the case: De 90 años y más.
    final SevenIntellectualData = [
      new IntellectualData(101, 0.005, 05.0, Color(0xff000000)),
    ];

///Del tipo mental
    ///
    /// This data is for the first graphic.
    /// OneMentalData: all the data for the case: De 0 a 14 años.
    final OneMentalData = [
      new MentalData(1713, 0.12, 10.0, Color(0xff3366cc)),
    ];

    /// TwoMentalData: all data for the case: De 15 a 29 años.
    final TwoMentalData = [
      new MentalData(2948, 0.20, 15.0, Color(0xfffdbe19)),
    ];

    /// ThreeMentalData: all data for the case: De 30 a 59 años.
    final ThreeMentalData = [
      new MentalData(5888, 0.41, 29.0, Color(0xff109618))
    ];

    /// FourMentalData: all data for the case: De 60 a 64 años.
    final FourMentalData = [
      new MentalData(723, 0.05, 04.0, Color(0xff990099)),
    ];

    /// FiveMentalData: all data for the case: De 65 a 74 años.
    final FiveMentalData = [
      new MentalData(1208, 0.08, 05.0, Color(0xffff0067)),
    ];

    /// SixMentalData: all data for the case: De 75 a 89 años.
    final SixMentalData = [
      new MentalData(1428, 0.10, 07.0, Color(0xffff0000)),
    ];

    /// SevenMentalData: all data for the case: De 90 años y más.
    final SevenMentalData = [
      new MentalData(218, 0.01, 01.0, Color(0xff000000)),
    ];

    ///No tiene ninguna discapacidad
    ///
    /// This data is for the first graphic.
    /// OneNoneData: all the data for the case: De 0 a 14 años.
    final OneNoneData = [
      new NoneData(522484, 0.27, 22.0, Color(0xff3366cc)),
    ];

    /// TwoNoneData: all data for the case: De 15 a 29 años.
    final TwoNoneData = [
      new NoneData(559775, 0.29, 24.0, Color(0xfffdbe19)),
    ];

    /// ThreeNoneData: all data for the case: De 30 a 59 años.
    final ThreeNoneData = [
      new NoneData(670212, 0.35, 28.0, Color(0xff109618))
    ];

    /// FourNoneData: all data for the case: De 60 a 64 años.
    final FourNoneData = [
      new NoneData(47898, 0.02, 01.0, Color(0xff990099)),
    ];

    /// FiveNoneData: all data for the case: De 65 a 74 años.
    final FiveNoneData = [
      new NoneData(58280, 0.03, 02.0, Color(0xffff0067)),
    ];

    /// SixNoneData: all data for the case: De 75 a 89 años.
    final SixNoneData = [
      new NoneData(27492, 0.01, 01.0, Color(0xffff0000)),
    ];

    /// SevenNoneData: all data for the case: De 90 años y más.
    final SevenNoneData = [
      new NoneData(1527, 0.00, 01.0, Color(0xff000000)),
    ];


        /// Se añaden los datos para el gráfico: Para ver aún con los anteojos o lentes puestos
    _seriesGlassesData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    _seriesGlassesData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ));

    /// Se añaden los datos para el gráfico: Para oir
    _seriesHearData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    _seriesHearData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenHearData,
      domainFn: (HearData hear, _) => hear.numPerH,
      measureFn: (HearData hear, _) => hear.porcentH,
      radiusPxFn: (HearData hear, _) => hear.amountH,
      colorFn: (HearData hear, _) =>
          charts.ColorUtil.fromDartColor(hear.colorvarH),
      labelAccessorFn: (HearData hear, _) =>
      '${hear.numPerH}',
    ));

    /// Se añaden los datos para el gráfico: Para hablar
    _seriesTalkData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    _seriesTalkData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenTalkData,
      domainFn: (TalkData talk, _) => talk.numPerT,
      measureFn: (TalkData talk, _) => talk.porcentT,
      radiusPxFn: (TalkData talk, _) => talk.amountT,
      colorFn: (TalkData talk, _) =>
          charts.ColorUtil.fromDartColor(talk.colorvarT),
      labelAccessorFn: (TalkData talk, _) =>
      '${talk.numPerT}',
    ));

    /// Se añaden los datos para el gráfico: Para caminar o subir gradas
    _seriesWalkData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    _seriesWalkData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenWalkData,
      domainFn: (WalkData walk, _) => walk.numPerW,
      measureFn: (WalkData walk, _) => walk.porcentW,
      radiusPxFn: (WalkData walk, _) => walk.amountW,
      colorFn: (WalkData walk, _) =>
          charts.ColorUtil.fromDartColor(walk.colorvarW),
      labelAccessorFn: (WalkData walk, _) =>
      '${walk.numPerW}',
    ));

    /// Se añaden los datos para el gráfico: Para utilizar brazos o manos
    _seriesArmData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    _seriesArmData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenArmData,
      domainFn: (ArmData arm, _) => arm.numPerA,
      measureFn: (ArmData arm, _) => arm.porcentA,
      radiusPxFn: (ArmData arm, _) => arm.amountA,
      colorFn: (ArmData arm, _) =>
          charts.ColorUtil.fromDartColor(arm.colorvarA),
      labelAccessorFn: (ArmData arm, _) =>
      '${arm.numPerA}',
    ));

    /// Se añaden los datos para el gráfico: Del tipo intelectual
    _seriesIntellectualData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    _seriesIntellectualData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenIntellectualData,
      domainFn: (IntellectualData intellectual, _) => intellectual.numPerI,
      measureFn: (IntellectualData intellectual, _) => intellectual.porcentI,
      radiusPxFn: (IntellectualData intellectual, _) => intellectual.amountI,
      colorFn: (IntellectualData intellectual, _) =>
          charts.ColorUtil.fromDartColor(intellectual.colorvarI),
      labelAccessorFn: (IntellectualData intellectual, _) =>
      '${intellectual.numPerI}',
    ));

    /// Se añaden los datos para el gráfico: Del tipo mental
    _seriesMentalData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    _seriesMentalData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenMentalData,
      domainFn: (MentalData mental, _) => mental.numPerM,
      measureFn: (MentalData mental, _) => mental.porcentM,
      radiusPxFn: (MentalData mental, _) => mental.amountM,
      colorFn: (MentalData mental, _) =>
          charts.ColorUtil.fromDartColor(mental.colorvarM),
      labelAccessorFn: (MentalData mental, _) =>
      '${mental.numPerM}',
    ));

    /// Se añaden los datos para el gráfico: No tiene ninguna discapacidad
    _seriesNoneData.add(charts.Series(
      id: 'De 0 a 14 años',
      data: OneNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 15 a 29 años',
      data: TwoNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 30 a 59 años',
      data: ThreeNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 60 a 64 años',
      data: FourNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 65 a 74 años',
      data: FiveNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 75 a 89 años',
      data: SixNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

    _seriesNoneData.add(charts.Series(
      id: 'De 90 años y más',
      data: SevenNoneData,
      domainFn: (NoneData none, _) => none.numPerN,
      measureFn: (NoneData none, _) => none.porcentN,
      radiusPxFn: (NoneData none, _) => none.amountN,
      colorFn: (NoneData none, _) =>
          charts.ColorUtil.fromDartColor(none.colorvarN),
      labelAccessorFn: (NoneData none, _) =>
      '${none.numPerN}',
    ));

  }

  @override
  void initState() {
    super.initState();
    _seriesGlassesData = List<charts.Series<GlassesData, int>>();
    _seriesHearData = List<charts.Series<HearData, int>>();
    _seriesTalkData = List<charts.Series<TalkData, int>>();
    _seriesWalkData = List<charts.Series<WalkData, int>>();
    _seriesArmData = List<charts.Series<ArmData, int>>();
    _seriesIntellectualData = List<charts.Series<IntellectualData, int>>();
    _seriesMentalData = List<charts.Series<MentalData, int>>();
    _seriesNoneData = List<charts.Series<NoneData, int>>();
    _generateData();
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
                title: Text('Mujeres'),
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
                            child: new charts.ScatterPlotChart(
                                _seriesGlassesData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesHearData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesTalkData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesWalkData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesArmData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesIntellectualData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesMentalData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
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
                            child: new charts.ScatterPlotChart(
                                _seriesNoneData,
                                // Set up a bucketing axis that will place all values below 0.1 (10%)
                                // into a bucket at the bottom of the chart.
                                //
                                // Configure a tick count of 3 so that we get 100%, 50%, and the
                                // threshold.
                                primaryMeasureAxis: new charts
                                    .BucketingAxisSpec(
                                    threshold: 0.1,
                                    tickProviderSpec: new charts
                                        .BucketingNumericTickProviderSpec(
                                        desiredTickCount: 3)),
                                // Add a series legend to display the series names.
                                behaviors: [
                                  new charts.SeriesLegend(
                                      position: charts.BehaviorPosition.end),
                                ],
                                animate: true),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

/// GlassData
///
/// How the data is going to be stored.
class GlassesData {
  ///numPerG: Indicates the amount of people by numbers
  final int numPerG;
  ///porcentG: Indicates the amount of people by percent
  final double porcentG;
  ///amountG: Used as a graphical indicator of the amount of people
  final double amountG;
  ///colorvarG: Indicate the color that is going to be used.
  final Color colorvarG;

  GlassesData(
      this.numPerG, this.porcentG, this.amountG, this.colorvarG);
}

/// HearData
///
/// How the data is going to be stored.
class HearData {
  ///numPerG: Indicates the amount of people by numbers
  final int numPerH;
  ///porcentG: Indicates the amount of people by percent
  final double porcentH;
  ///amountG: Used as a graphical indicator of the amount of people
  final double amountH;
  ///colorvarH: Indicate the color that is going to be used.
  final Color colorvarH;

  HearData(
      this.numPerH, this.porcentH, this.amountH, this.colorvarH);
}

/// TalkData
///
/// How the data is going to be stored.
class TalkData {
  ///numPerT: Indicates the amount of people by numbers
  final int numPerT;
  ///porcentT: Indicates the amount of people by percent
  final double porcentT;
  ///amountT: Used as a graphical indicator of the amount of people
  final double amountT;
  ///colorvarT: Indicate the color that is going to be used.
  final Color colorvarT;

  TalkData(
      this.numPerT, this.porcentT, this.amountT, this.colorvarT);
}

/// WalkData
///
/// How the data is going to be stored.
class WalkData {
  ///numPerW: Indicates the amount of people by numbers
  final int numPerW;
  ///porcentW: Indicates the amount of people by percent
  final double porcentW;
  ///amountW: Used as a graphical indicator of the amount of people
  final double amountW;
  ///colorvarW: Indicate the color that is going to be used.
  final Color colorvarW;

  WalkData(
      this.numPerW, this.porcentW, this.amountW, this.colorvarW);
}

/// ArmData
///
/// How the data is going to be stored.
class ArmData {
  ///numPerA: Indicates the amount of people by numbers
  final int numPerA;
  ///porcentA: Indicates the amount of people by percent
  final double porcentA;
  ///amountA: Used as a graphical indicator of the amount of people
  final double amountA;
  ///colorvarA: Indicate the color that is going to be used.
  final Color colorvarA;

  ArmData(
      this.numPerA, this.porcentA, this.amountA, this.colorvarA);
}

/// IntellectualData
///
/// How the data is going to be stored.
class IntellectualData {
  ///numPerI: Indicates the amount of people by numbers
  final int numPerI;
  ///porcentI: Indicates the amount of people by percent
  final double porcentI;
  ///amountI: Used as a graphical indicator of the amount of people
  final double amountI;
  ///colorvarI: Indicate the color that is going to be used.
  final Color colorvarI;

  IntellectualData(
      this.numPerI, this.porcentI, this.amountI, this.colorvarI);
}

/// MentalData
///
/// How the data is going to be stored.
class MentalData {
  ///numPerM: Indicates the amount of people by numbers
  final int numPerM;
  ///porcentM: Indicates the amount of people by percent
  final double porcentM;
  ///amountM: Used as a graphical indicator of the amount of people
  final double amountM;
  ///colorvarM: Indicate the color that is going to be used.
  final Color colorvarM;

  MentalData(
      this.numPerM, this.porcentM, this.amountM, this.colorvarM);
}

/// NoneData
///
/// How the data is going to be stored.
class NoneData {
  ///numPerN: Indicates the amount of people by numbers
  final int numPerN;
  ///porcentN: Indicates the amount of people by percent
  final double porcentN;
  ///amountN: Used as a graphical indicator of the amount of people
  final double amountN;
  ///colorvarN: Indicate the color that is going to be used.
  final Color colorvarN;

  NoneData(
      this.numPerN, this.porcentN, this.amountN, this.colorvarN);
}