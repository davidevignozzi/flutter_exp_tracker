import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/genarlVariables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class formImport extends StatefulWidget {
  @override
  formImportState createState() => new formImportState();
}

class formImportState extends State<formImport> {
  final controller = TextEditingController();
  var _import;

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setImport(_importValue) {
    var _import = int.parse(_importValue);
    setState(() {
      generalImportParsed = _import;
      generalImport = '$_importValue €';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 53,
      child: TextFormField(
        controller: controller,
        onEditingComplete: () {
          setImport(controller.text);
          if (generalImportParsed is int) {
            print(generalImport);
            print(generalImportParsed);
          }
        },
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
