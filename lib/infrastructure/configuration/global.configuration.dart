class GlobalCIATConfiguration {
  // Backend configuration
  final String _redirectAuthURL = const String.fromEnvironment('redirect_url');
  final String _genesysURL = const String.fromEnvironment('genesys_url');
  final String _clientId = const String.fromEnvironment('client_id');
  final String _clientSecretId = const String.fromEnvironment('client_secret');
  final String _server = const String.fromEnvironment('server');

  static final GlobalCIATConfiguration controller =
      GlobalCIATConfiguration._intern();

  GlobalCIATConfiguration._intern();

  factory GlobalCIATConfiguration() {
    return controller;
  }

  String get apiServer => '$_server/api/v1';

  String get authServer => '$_server/oauth2';

  String get redirectAuthURL => _redirectAuthURL;

  String get server => _server;

  String get clientId => _clientId;

  String? get clientSecretId => _clientSecretId;

  String get genesysURL => _genesysURL;
}
