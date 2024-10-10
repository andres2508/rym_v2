import 'package:flutter/material.dart';
import 'package:rym_v2/utils/locale.utils.dart';

class ErrorPageView extends StatelessWidget {
  final String _message;
  final Function? retryAction;

  const ErrorPageView(this._message, this.retryAction, {super.key});

  const ErrorPageView.of(this._message, {this.retryAction, super.key});

  const ErrorPageView.notImplemented({this.retryAction, super.key})
      : _message = "Not implemented view";

  @override
  Widget build(BuildContext context) {
    final loc = context.loc();
    final columnChildren = <Widget>[
      const Icon(Icons.warning, size: 42),
      Center(child: Text(loc.unexpected_error)),
      Center(child: Text(_message)),
    ];
    if (retryAction != null) {
      columnChildren.add(ElevatedButton(
        child: Text(loc.retry),
        onPressed: () => retryAction!.call(),
      ));
    }
    final column = Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: columnChildren,
      ),
    );
    return column;
  }
}
