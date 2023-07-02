// apps lead page

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsLeadPage extends StatelessWidget {
  const AppsLeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        withappbar: true,
        titleAppbar: "Lead",
        withAction: false,
        withLeading: false,
        backgroundColor: white,
        mainChildWidget: const Center(
          child: Text(
            "Lead Content Page",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ));
  }
}
