// apps home page

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsHomePage extends StatefulWidget {
  const AppsHomePage({super.key});

  @override
  State<AppsHomePage> createState() => _AppsHomePageState();
}

class _AppsHomePageState extends State<AppsHomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final ScrollController scrollController = ScrollController();

    return AppsScaffold(
        withappbar: true,
        titleAppbar: "Dashboard",
        withAction: true,
        listAction: [
          SizedBox(
            width: 35,
            child: IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AppsNotificaitionPage()));
                },
                icon: ImageIcon(
                  const AssetImage(AppsIconResource.notif),
                  size: 20,
                  color: white,
                )),
          ),
          Image.asset(
            AppsIconResource.profus,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 27,
          ),
        ],
        withLeading: false,
        backgroundColor: mainPurple,
        mainChildWidget: SingleChildScrollView(
          child: Container(
            color: mainPurple,
            child: Column(
              children: [
                //topcontent
                const ReportChartWidget(),
                //bottom content
                Container(
                  height: mediaQuery.height,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AppsIconResource.chart,
                              width: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "Key Performace Indicator",
                              style: TextStyle(
                                fontSize: 12,
                                color: black,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 108,
                        child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          scrollDirection: Axis.horizontal,
                          itemCount: PublicModel.performanceModel.length,
                          itemBuilder: (context, index) {
                            var data = PublicModel.performanceModel[index];
                            return Card(
                              surfaceTintColor: white,
                              color: white,
                              shadowColor: grey1,
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          data.uriIcon,
                                          width: 24,
                                          height: 24,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          data.nameKey,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: black,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      data.mainValue.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: black,
                                          fontSize: 28),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Last month",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: grey3,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Text(
                                          data.percentage,
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: data.colorPersentage,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, top: 10, right: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                sliderContainer(grey2, 35.0),
                                const SizedBox(
                                  width: 5,
                                ),
                                sliderContainer(purple, 35.0),
                                const SizedBox(
                                  width: 5,
                                ),
                                sliderContainer(grey2, 35.0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            titleSection("Recent Lead")
                          ],
                        ),
                      ),
                      Container(
                          height: 220,
                          margin: const EdgeInsets.only(
                            left: 16,
                            right: 10,
                          ),
                          child: AppsListViewWidget(
                              scrollController: scrollController,
                              withdivider: false,
                              listData: PublicModel.recentleadModel,
                              itemBuilder: (context, index) {
                                var data = PublicModel.recentleadModel[index];
                                return ListTile(
                                    leading: Image.asset(
                                      data.imageLeading,
                                      height: 40,
                                      width: 40,
                                    ),
                                    title: Text(data.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: black),
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.ellipsis),
                                    subtitle: Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          color: grey2,
                                          size: 12,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(data.datelead,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: grey2,
                                                fontSize: 11),
                                            textAlign: TextAlign.justify,
                                            overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                    trailing: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                          data.imageTrailing,
                                          height: 24,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        textCurrency(
                                            data.nominal,
                                            TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w600,
                                                color: black))
                                      ],
                                    ));
                              })),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 25, left: 30),
                        child: titleSection("Leaderboards"),
                      ),
                      Container(
                        height: 300,
                        margin: const EdgeInsets.only(
                          left: 16,
                          right: 10,
                        ),
                        child: AppsListViewWidget(
                            scrollController: scrollController,
                            withdivider: true,
                            listData: PublicModel.leaderboardModel,
                            itemBuilder: (context, index) {
                              var data = PublicModel.leaderboardModel[index];
                              return ListTile(
                                leading: Text(data.id.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: darkPurple,
                                        fontSize: 21)),
                                title: Row(
                                  children: [
                                    Image.asset(
                                      data.imageleading,
                                      height: 40,
                                      width: 40,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                color: black),
                                            textAlign: TextAlign.justify,
                                            overflow: TextOverflow.ellipsis),
                                        const SizedBox(
                                          height: 1,
                                        ),
                                        Text(data.date,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: grey2,
                                                fontSize: 10.5),
                                            textAlign: TextAlign.justify,
                                            overflow: TextOverflow.ellipsis)
                                      ],
                                    ),
                                  ],
                                ),
                                subtitle: null,
                                trailing: SizedBox(
                                  width: 60.0,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(data.qtyDeals.toString(),
                                          style: TextStyle(
                                              color: darkPurple,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Text("Deals",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: grey2,
                                              fontSize: 11),
                                          textAlign: TextAlign.justify,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
