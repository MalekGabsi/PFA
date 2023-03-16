import 'package:flutter/material.dart';
import 'package:to_do_list/util/my_button.dart';

class Dialogbox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  Dialogbox({super.key,
  required this.controller,
  required this.onSave,
  required this.onCancel,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 53, 181, 209),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //input of the user
            TextField(
              controller: controller,
              cursorColor:Colors.black,
              decoration:InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
    ),
              
              hintText: "Add a new task ",
              
              
              ),
            ),

            //les bouttons save et cancel 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),


                //cancelbutton

                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )



          ],
        ),
      ),
    );
  }
}