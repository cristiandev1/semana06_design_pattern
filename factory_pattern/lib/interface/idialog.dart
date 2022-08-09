import 'package:factory_pattern/model/dialog_action.dart';
import 'package:flutter/material.dart';

abstract class IDialog{
  Widget criar(BuildContext context, Widget title, Widget content, List<DialogAction> actions);
}