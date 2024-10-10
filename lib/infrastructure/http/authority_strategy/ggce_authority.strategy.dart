import 'package:rym_v2/infrastructure/configuration/global.configuration.dart';
import 'package:rym_v2/infrastructure/http/authority_strategy/http_authority.strategy.dart';
import 'package:rym_v2/infrastructure/http/http.interceptor.dart';

class GGCEAuthorityStrategy extends HttpAuthorityStrategy {
  GGCEAuthorityStrategy()
      : super(authority: GlobalCIATConfiguration.controller.server);

  @override
  void interceptorsInitialize() {
    addInterceptor(HttpContentTypeInterceptor());
  }
}
