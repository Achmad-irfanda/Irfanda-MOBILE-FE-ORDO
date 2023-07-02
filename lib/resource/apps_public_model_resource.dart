// apps public model resource

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class PublicModel {
  //performace indicator
  static List<PerformanceIndicatorModel> performanceModel = [
    PerformanceIndicatorModel(
        "Total Lead", AppsImageResource.store, 57, "+3.5%", black),
    PerformanceIndicatorModel(
        "Hot Lead", AppsImageResource.flame, 28, "-1.25%", red),
    PerformanceIndicatorModel(
        "Total Deals", AppsImageResource.checklist, 100, "0%", black),
    PerformanceIndicatorModel(
        "Grand Opening", AppsImageResource.flag, 150, "+3.5%", black),
    PerformanceIndicatorModel(
        "Cold Lead", AppsImageResource.snow, 45, "+3.5%", black),
    PerformanceIndicatorModel(
        "Failed Deal", AppsImageResource.cancel, 13, "+35%", black),
  ];

  //recent lead
  static List<RecentLeadModel> recentleadModel = [
    RecentLeadModel(AppsImageResource.shinrec, "Shinta Alexandra", "New Lead",
        "31 January 2023", 13000000, AppsLabelResource.newlead),
    RecentLeadModel(AppsImageResource.vitrec, "Vita Arsalansia", "Hot Lead",
        "31 January 2023", 13000000, AppsLabelResource.hotlead),
    RecentLeadModel(AppsImageResource.merrec, "Meriko Yolanda", "Cold Lead",
        "31 January 2023", 13000000, AppsLabelResource.coldlead),
  ];

  //leaderboards
  static List<LeaderboardsModel> leaderboardModel = [
    LeaderboardsModel("Shinta Alexandra", AppsImageResource.shinlead,
        "31 January 2023", 45, 1),
    LeaderboardsModel("Jonathan Zegwin", AppsImageResource.jhonlead,
        "31 January 2023", 41, 2),
    LeaderboardsModel(
        "Vita Arsalansia", AppsImageResource.vitlead, "31 January 2023", 34, 3),
    LeaderboardsModel(
        "Meriko Yolanda", AppsImageResource.merlead, "31 January 2023", 30, 4),
    LeaderboardsModel(
        "Higuain Morelan", AppsImageResource.higlead, "31 January 2023", 25, 5),
  ];

  static List<FlSpot> flData = [
    const FlSpot(1, 180000),
    const FlSpot(3, 255000),
    const FlSpot(5, 230000),
    const FlSpot(7, 220000),
    const FlSpot(9, 250000),
    const FlSpot(11, 260000),
    const FlSpot(13, 255000),
    const FlSpot(15, 240000),
  ];
}
