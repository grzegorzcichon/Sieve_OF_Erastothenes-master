import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sieveoferatosthenes/resources/colors/colors.dart';
import 'package:sieveoferatosthenes/resources/strings/strings.dart';
import 'package:sieveoferatosthenes/widgets/text_styles.dart';

import '../text_styles.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
          child: Text(Str.label.sieveoferatosthenes,
              style: AppabarTextStyles.overline(
                  color: Theme.of(context).colorScheme.FontsColor,
                  context: context))),

      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
