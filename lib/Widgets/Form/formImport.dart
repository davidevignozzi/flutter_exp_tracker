import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class formImport extends StatefulWidget {
  @override
  formImportState createState() => new formImportState();
}

class formImportState extends State<formImport> {
  var importParsed;
  var import;
  void setImport(import) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 53,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Importo',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
