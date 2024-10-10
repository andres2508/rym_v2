import 'package:flutter/material.dart';
import 'package:rym_v2/framework/dialog/dialogs.service.dart';
import 'package:rym_v2/infrastructure/locator/service.locator.dart';

class ProgressDialogWrapper extends StatelessWidget {
  final WidgetBuilder builder;

  const ProgressDialogWrapper({required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    serviceLocator<DialogsService>().changeContext(context);
    return builder(context);
  }
}
