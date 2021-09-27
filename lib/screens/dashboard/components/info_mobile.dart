import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/models/recent_user_model.dart';

import 'recent_users.dart';

class TableMobile extends StatelessWidget {
  const TableMobile({ Key? key }) : super(key: key);

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
                    label: Text("Paciente"),
                  ),
                  DataColumn(
                    label: Text("Detalhes"),
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
      DataCell(Text(userInfo.namePatient!)),
     DataCell(
        Row(
          children: [
            TextButton(
              child: Text("Exibir", style: TextStyle(color: Colors.green)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          title: Center(
                            child: Column(
                              children: [
                                Text("SPA", style: TextStyle(color: Colors.green, fontSize: 30)),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                          content: Container(
                            color: secondaryColor,
                            height: 270,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Estagiário: "),
                                    Text("${userInfo.nameInter}", style: 
                                      TextStyle(color: Colors.green,
                                      fontWeight: FontWeight.w400 )),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Paciente: "),
                                    Text("${userInfo.namePatient}", style: 
                                      TextStyle(color: Colors.green,
                                      fontWeight: FontWeight.w400 )),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Horário: "),
                                    Text("${userInfo.officeHours}", style: 
                                      TextStyle(color: Colors.green,
                                      fontWeight: FontWeight.w400 )),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Estado: "),
                                    Text("${userInfo.status}", style: 
                                      TextStyle(color: Colors.green,
                                      fontWeight: FontWeight.w400 )),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Triagem: "),
                                    Text("${userInfo.screeningNumber}", style: 
                                      TextStyle(color: Colors.green,
                                      fontWeight: FontWeight.w400 )),
                                  ],
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                            primary: Colors.grey),
                                      onPressed: () {
                                          Navigator.of(context).pop();
                                        }, child: Text("Fechar")),
                                  ],
                                )
                              ],
                            ),
                          ));

                    });
              },
            ),
          ],
        ),
      ),
    ],
  );
}
