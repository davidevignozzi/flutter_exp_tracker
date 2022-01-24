import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';

class formText extends StatefulWidget {
  @override
  formTextState createState() => new formTextState();
}

class formTextState extends State<formText> {
  final controller = TextEditingController();

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setName(_nameValue) {
    setState(() {
      generalName = _nameValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.search,
        onEditingComplete: () {
          setName(controller.text);
          print(generalName);
        },
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Nome movimento',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
