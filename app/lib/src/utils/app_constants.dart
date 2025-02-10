/// A class containing application-wide constants.
class AppConstants {
  /// The default title of the application.
  static const String kAppName = 'Guia de Motéis GO';

  /// The base URL for API endpoints.
  static const String kBaseUrl = 'https://www.jsonkeeper.com';

  /// The path to the application logo.
  static const String kLogoPath = 'packages/app/assets/images/logo.webp';

  /// A list of available filters for motels.
  static const List<String> motelFilters = [
    'com desconto',
    'disponível',
    'hidro',
    'piscina',
    'sauna',
    'ofurô',
    'decoração erótica',
    'decoração temática',
    'cadeira erótica',
    'pista de dança',
    'garagem privativa',
    'frigobar',
    'internet wi-fi',
    'suíte para festas',
    'suíte com acessibilidade',
  ];
}
