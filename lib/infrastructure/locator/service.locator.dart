import 'package:get_it/get_it.dart';
import 'package:rym_v2/framework/dialog/dialogs.service.dart';
import 'package:rym_v2/framework/messages/messages.service.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Infrastructure Services
  serviceLocator.registerSingleton(MessagesService());
  serviceLocator.registerSingleton(DialogsService());
}
