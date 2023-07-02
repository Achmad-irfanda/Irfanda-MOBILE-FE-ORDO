// apps notification page

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsNotificaitionPage extends StatelessWidget {
  const AppsNotificaitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        withappbar: true,
        titleAppbar: "Notification",
        withAction: false,
        withLeading: true,
        backgroundColor: white,
        mainChildWidget: const Center(
          child: Text(
            "Notification Content Page",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ));
  }
}
