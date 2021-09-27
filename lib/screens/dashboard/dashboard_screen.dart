import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/responsive.dart';


import 'package:smart_admin_dashboard/screens/dashboard/components/recent_users.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/user_details_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        //padding: EdgeInsets.all(defaultPadding),
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        RecentUsers(),
                        SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) UserDetailsWidget(),

                        if (Responsive.isTablet(context)) SizedBox(height: defaultPadding),
                        if (Responsive.isTablet(context)) UserDetailsWidget(),
                      ],
                    ),
                  ),
                  // if (Responsive.isTablet(context)) 
                  // Expanded(
                  //   flex: 2,
                  //   child: Column(
                  //     children: [
                  //       SizedBox(height: defaultPadding),
                  //         SizedBox(height: defaultPadding),
                  //       if (Responsive.isTablet(context)) 
                  //         UserDetailsWidget(),
                  //     ],
                  //   ),
                  // ),
                  if (Responsive.isDesktop(context))
                    SizedBox(width: defaultPadding),
                    if (Responsive.isDesktop(context))
                    Expanded(
                      flex: 2,
                      child: UserDetailsWidget(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
