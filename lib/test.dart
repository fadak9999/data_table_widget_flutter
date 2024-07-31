import 'package:flutter/material.dart';

class DataTableExample extends StatefulWidget {
  const DataTableExample({super.key});

  @override
  State<DataTableExample> createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  ///
  final List<DataRow> _rows = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _animalController = TextEditingController();

  void _addRow() {
    setState(() {
      _rows.add(DataRow(cells: [
        DataCell(Text(_nameController.text)),
        DataCell(Text(_ageController.text)),
        DataCell(Text(_colorController.text)),
        DataCell(Text(_animalController.text)),
      ]));
      _nameController.clear();
      _ageController.clear();
      _colorController.clear();
      _animalController.clear();
    });
  }

//
  @override
  Widget build(BuildContext context) {
    //
    TextStyle title = const TextStyle(
        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
//
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table Example"),
        backgroundColor: const Color.fromARGB(255, 162, 162, 161),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 1, 225, 255),
                  Color.fromARGB(255, 192, 186, 212),
                  Color.fromARGB(255, 255, 2, 217),
                ])),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        "Name",
                        style: title,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Age",
                        style: title,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Color",
                        style: title,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Animal",
                        style: title,
                      ),
                    ),
                  ],
                  rows: _rows,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _ageController,
                decoration: const InputDecoration(labelText: 'Age'),
              ),
              TextField(
                controller: _colorController,
                decoration: const InputDecoration(labelText: 'Color'),
              ),
              TextField(
                controller: _animalController,
                decoration: const InputDecoration(labelText: 'Animal'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addRow,
                child: const Text('Add Row'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
