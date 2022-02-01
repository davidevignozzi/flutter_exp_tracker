import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class formImport extends StatefulWidget {
  @override
  formImportState createState() => new formImportState();
}

class formImportState extends State<formImport> {
  final controller = TextEditingController();

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
        keyboardType:
            TextInputType.numberWithOptions(decimal: true, signed: true),
        textInputAction: TextInputAction.done,
        onEditingComplete: () {
          FocusManager.instance.primaryFocus?.unfocus();
          setImport(controller.text);
          if (generalImportParsed is int) {
            print(generalImport);
          }
        },
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
