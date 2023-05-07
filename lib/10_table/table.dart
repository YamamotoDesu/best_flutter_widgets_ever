import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Table(
            border: TableBorder.all(color: Colors.black38),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children:  [
              const TableRow(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Title 1',
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Title 2',
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Title 3',
                      ),
                    ),
                  ),
                ],
              ),
              ...List.generate(20, (index) => 
              const TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Call 1',
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Call 2',
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Call 3',
                      ),
                    ),
                  ),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
