// apps performance indicator model

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class PerformanceIndicatorModel {
  String nameKey, uriIcon, percentage;
  int mainValue;
  Color colorPersentage; 
  PerformanceIndicatorModel(
      this.nameKey, this.uriIcon, this.mainValue, this.percentage, this.colorPersentage);
}
