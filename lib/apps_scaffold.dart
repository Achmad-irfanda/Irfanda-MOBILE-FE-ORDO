// apps sie pos scaffold (public)

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';


class AppsScaffold extends StatelessWidget {
  // with appbar
  final dynamic withappbar;
  final dynamic titleAppbar;
  final bool? withLeading;
  final bool? customNav;
  final dynamic onPressCustomNav;
  final dynamic withAction;
  final dynamic listAction;
  // main widget
  final Color backgroundColor;
  final Widget mainChildWidget;

  const AppsScaffold({
    super.key,
    this.withappbar,
    this.titleAppbar,
    this.withLeading,
    this.customNav,
    this.onPressCustomNav,
    this.withAction,
    this.listAction,
    required this.backgroundColor, 
    required this.mainChildWidget,
  });

  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: backgroundColor,
            appBar: (withappbar == false)
                ? null
                : AppsAppbarWidget(
                    titleAppbar: titleAppbar,
                    withLeading: withLeading,
                    withAction: withAction,
                    listAction: listAction,
                  ),
            body: mainChildWidget,
          ),
        );
      });
}
