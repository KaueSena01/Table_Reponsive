import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/responsive.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/info_desktop.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/info_tablet.dart';

import 'info_mobile.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Candidates",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          if (Responsive.isMobile(context))TableMobile(),
          if (Responsive.isTablet(context))TableTablet(),
          if (Responsive.isDesktop(context))TableDesktop(),
        ],
      ),
    );
  }
}

