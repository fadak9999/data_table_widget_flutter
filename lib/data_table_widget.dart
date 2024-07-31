import 'package:flutter/material.dart';

class data_table extends StatefulWidget {
  const data_table({super.key});

  @override
  State<data_table> createState() => _data_tableState();
}

class _data_tableState extends State<data_table> {
  @override
  Widget build(BuildContext context) {
    //
    TextStyle title = const TextStyle(
        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);

    //
    return Scaffold(
      appBar: AppBar(
        title: Text("data_table"),
        backgroundColor: Color.fromARGB(255, 162, 162, 161),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 1, 225, 255),
                Color.fromARGB(255, 192, 186, 212),
                Color.fromARGB(255, 255, 2, 217),
              ])),
              //////////////////////DataTable//////////
              child: DataTable(
                  columns: [
                    DataColumn(
                        label: Text(
                      "Name",
                      style: title,
                    )),
                    //
                    DataColumn(
                        label: Text(
                      "Age",
                      style: title,
                    )),
                    //
                    DataColumn(
                      label: Text(
                        "color",
                        style: title,
                      ),
                    ),
                    DataColumn(
                        label: Text(
                      "animal",
                      style: title,
                    )),
                  ],
                  //--
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text("Fadak")),
                      DataCell(Text("20")),
                      DataCell(Text("golden")),
                      DataCell(Text("All animals")),
                    ]),
                    //
                    DataRow(cells: [
                      DataCell(Text("Hussein")),
                      DataCell(Text("22")),
                      DataCell(Text("Violet")),
                      DataCell(Text("The Owl")),
                    ]),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
