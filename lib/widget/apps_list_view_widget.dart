// apps custom list view
import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

class AppsListViewWidget extends StatelessWidget {
  final ScrollController scrollController;
  final List<dynamic> listData;
  final bool withdivider;
  final Widget Function(BuildContext, int) itemBuilder;

const AppsListViewWidget({
    Key? key,
    required this.scrollController,
    this.withdivider = true,
    required this.listData,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: listData.length,
      separatorBuilder: (_, index) {
        return (withdivider == true)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(color: grey1, height: 1,),
              )
            : const SizedBox();
      },
      itemBuilder: itemBuilder,
    );
  }
}
