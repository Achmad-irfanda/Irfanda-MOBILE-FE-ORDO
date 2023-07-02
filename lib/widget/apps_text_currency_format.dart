// apps currecy format

import 'package:intl/intl.dart';
import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

Widget textCurrency(
  text,
  style,
) {
  return Text(
    NumberFormat.currency(
      symbol: 'Rp ',
      decimalDigits: 0,
      locale: 'id',
    ).format(text),
    overflow: TextOverflow.ellipsis,
    style: style,
  );
}
