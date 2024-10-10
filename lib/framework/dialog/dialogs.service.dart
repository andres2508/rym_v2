import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rym_v2/framework/messages/message.dart';
import 'package:rym_v2/framework/messages/messages.service.dart';
import 'package:rym_v2/infrastructure/locator/service.locator.dart';

class DialogsService with MessagesListener {
  BuildContext? _context;
  bool _isProgressVisible = false;

  DialogsService() {
    serviceLocator<MessagesService>().addListener(this);
  }

  void _hideProgress() {
    if (_isProgressVisible) {
      _isProgressVisible = false;
      _context!.pop();
    }
  }

  void _showDialog(String title, Message msg) {
    _hideProgress();
    showDialog(
      context: _context!,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg.text),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () => _context!.pop(),
            ),
          ],
        );
      },
    );
  }

  void _showLoginDialog(Message msg) {
    _hideProgress();
    showDialog(
      context: _context!,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error de Autorización:"),
          content: Text(msg.text),
          actions: <Widget>[
            TextButton(
              child: const Text("Login"),
              onPressed: () => _context!.go('/login'),
            ),
          ],
        );
      },
    );
  }

  @override
  void onError(Message message) {
    print("ERROR");
    _showDialog('Ocurrió un error', message);
  }

  @override
  void onInfo(Message message) {
    _showDialog('Información', message);
  }

  @override
  void onWarning(Message message) {
    _showDialog('Advertencia', message);
  }

  void changeContext(BuildContext context) {
    _context = context;
  }

  @override
  void authenticationError(Message message) {
    _showLoginDialog(message);
  }
}
