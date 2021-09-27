import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/models/recent_user_model.dart';

import 'recent_users.dart';

class TableDesktop extends StatelessWidget {
  const TableDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Estagiário"),
                  ),
                  DataColumn(
                    label: Text("Paciente"),
                  ),
                  DataColumn(
                    label: Text("Horário"),
                  ),
                  DataColumn(
                    label: Text("Estado"),
                  ),
                  DataColumn(
                    label: Text("Triagem"),
                  ),
                ],
                rows: List.generate(
                  recentUsers.length,
                  (index) => recentUserDataRow(recentUsers[index], context),
                ),
              ),
            ),
          )
        );
  }
}

DataRow recentUserDataRow(RecentUser userInfo, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(Text(userInfo.nameInter!)),
      DataCell(Text(userInfo.namePatient!)),
      DataCell(Text(userInfo.officeHours!)),
      DataCell(Text(userInfo.status!)),
      DataCell(Text(userInfo.screeningNumber!)),
    ],
  );
}
