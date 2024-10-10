import 'package:go_router/go_router.dart';
import 'package:rym_v2/framework/dialog/dialogs.service.dart';
import 'package:rym_v2/framework/router/error_page.view.dart';
import 'package:rym_v2/infrastructure/locator/service.locator.dart';
import 'package:rym_v2/main.dart';

class CIATRouterBuilder {
  final List<GoRoute> _routes;

  CIATRouterBuilder._intern(this._routes);

  factory CIATRouterBuilder.initialize() {
    final List<GoRoute> routes = [];
    // Initialize routes
    for (var module in modules) {
      routes.addAll(module.routes());
    }
    return CIATRouterBuilder._intern(routes);
  }

  GoRouter build() {
    return GoRouter(
      routes: _routes,
      initialLocation: '/',
      redirect: (context, state) {
        // Change context in message listener
        serviceLocator<DialogsService>().changeContext(context);
        // ToDo: validate session active
        return null;
      },
      errorBuilder: (_, routerState) =>
          ErrorPageView.of(routerState.error.toString()),
    );
  }
}
