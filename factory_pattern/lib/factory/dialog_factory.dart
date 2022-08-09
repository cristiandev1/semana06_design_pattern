import 'dart:io';

import 'package:factory_pattern/component/android_dialog.dart';
import 'package:factory_pattern/component/ios_dialog.dart';
import 'package:factory_pattern/interface/idialog.dart';
import 'package:factory_pattern/model/dialog_action.dart';
import 'package:flutter/material.dart';

class DialogFactory {
  static Future<T?> showAlertDialog<T>(
    BuildContext context, {
    required Widget title,
    required Widget content,
    required List<DialogAction> actions,
  }) {
    IDialog dialog;
    if (Platform.isAndroid) {
      dialog = AndroidDialog();
    } else {
      dialog = IosDialog();
    }

    return showDialog(
      context: context,
      builder: (context) {
        return dialog.criar(context, title, content, actions);
      },
    );
  }
}
