// apps row title section

import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

Widget titleSection(
  title, 
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: black),
      ),
      IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () {},
          constraints: const BoxConstraints(),
          icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: grey1,
              ),
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: mainPurple,
                size: 15,
              )))
    ],
  );
}
