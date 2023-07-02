// apps profile page

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsProfilePage extends StatelessWidget {
  const AppsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        withappbar: true,
        titleAppbar: "Profile",
        withAction: false,
        withLeading: false,
        backgroundColor: white,
        mainChildWidget: const Center(
          child: Text(
            "Profile Content Page",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ));
  }
}
