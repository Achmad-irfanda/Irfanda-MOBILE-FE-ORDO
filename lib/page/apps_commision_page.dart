// apps commision page

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsCommisionPage extends StatelessWidget {
  const AppsCommisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        withappbar: true,
        titleAppbar: "Commision",
        withAction: false,
        withLeading: false,
        backgroundColor: white,
        mainChildWidget: const Center(
          child: Text(
            "Commision Content Page",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ));
  }
}
