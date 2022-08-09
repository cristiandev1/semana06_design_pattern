import 'package:factory_pattern/model/dialog_action.dart';
import 'package:factory_pattern/interface/idialog.dart';
import 'package:flutter/cupertino.dart';

class IosDialog implements IDialog {
  @override
  Widget criar(BuildContext context, Widget title, Widget content,
      List<DialogAction> actions) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions.map((e) {
        return CupertinoButton(child: e.child, onPressed: e.onPressed);
      }).toList(),
    );
  }
}
