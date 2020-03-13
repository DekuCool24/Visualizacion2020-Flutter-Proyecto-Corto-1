// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'app_config.dart';
import 'scatter_plot_chart/scatter_plot_gallery.dart' as scatter_plot
    show buildGallery;

/// Main entry point of the gallery app.
///
/// This renders a list of all available demos.
class Home extends StatelessWidget {
  final scatterPlotGalleries = scatter_plot.buildGallery();

  @override
  Widget build(BuildContext context) {
    var galleries = <Widget>[];

    // Add example scatter plot charts.
    galleries.addAll(scatterPlotGalleries
        .map((gallery) => gallery.buildGalleryListTile(context)));

    return new Scaffold(
      appBar: new AppBar(title: new Text(defaultConfig.appName)),
      body: new ListView(padding: kMaterialListPadding, children: galleries),
    );
  }
}
