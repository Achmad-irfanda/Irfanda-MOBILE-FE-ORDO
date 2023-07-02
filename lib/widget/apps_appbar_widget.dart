// apps appbar

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsAppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  final dynamic titleAppbar;
  final bool? withLeading;
  final dynamic withAction;
  final dynamic listAction;

  const AppsAppbarWidget({
    super.key,
    this.titleAppbar,
    this.withLeading = false,
    this.withAction,
    this.listAction,
  });

  @override
  State<AppsAppbarWidget> createState() => _AppsAppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _AppsAppbarWidgetState extends State<AppsAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (widget.withLeading == false)
          ? null
          : IconButton(
            onPressed: (){
              Navigator.of(context).pop(); 
            }, 
            icon: Icon(Icons.arrow_back_rounded, color: white,), 
          ),
      title: Text(
        widget.titleAppbar,
        style: TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 16)
      ),
      elevation: 0,
      actions: (widget.withAction == false) ? null : widget.listAction,
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: mainPurple, 
    );
  }
}
