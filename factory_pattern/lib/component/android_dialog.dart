import 'package:factory_pattern/model/dialog_action.dart';
import 'package:factory_pattern/interface/idialog.dart';
import 'package:flutter/material.dart';

class AndroidDialog implements IDialog{
  @override
  Widget criar(BuildContext context, Widget title, Widget content, List<DialogAction> actions) {
   return AlertDialog(
     title: title,
     content: content,
     actions: actions.map((e) {
       return ElevatedButton(onPressed: e.onPressed, child: e.child);
     }).toList(),
   );
  }
}