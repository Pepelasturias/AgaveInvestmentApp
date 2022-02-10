import 'dart:io';

import 'package:universal_platform/universal_platform.dart';

class Sistema {
  static const String DOMINIO_GLOBAL = 'http://server.agaveinvestment.com.mx/';

  static const int MINUMUN_VERSION = 0;

  static const String ID_CLIENTE = '100050';
  static String idUuid = '100050-GV@TXP5S&CI3RC020EWWTQYT7-2-1000001/JP';
  static const String AUTH_CLIENTE = '/LKHJGASLJKHG/97647/LKHGJH/LKGJLH';

  static const String SEARCH_MENSJAE = '¿Que te gustaría comer hoy?';

  static const String MESAJE_SHARE_LINK =
      'Descarga gratis Curiosity y encuentra promociones exclusivas.';

  static const String MESAJE_CATALOGO =
      'Registra la dirección donde enviaremos tu compra.';

  static const bool ID_VERIFICAR_URBE = true;
  static const bool IS_BACKGROUND = false;
  static const String ID_URBE = '1';

  static const int TARGET_WIDTH_PERFIL = 400;
  static const int TARGET_WIDTH_CHAT = 600;
  static const int TARGET_WIDTH_PROMO = 800;

  static const int IS_ACREDITADO = 200;
  static const int IS_TOKEN = 300;

  //Se cambia el texto mientras el modulo se corrige
  static const String EFECTIVO = '';
  static const String TARJETA = 'Tarjeta';
  static const String ID_FOMRA_PAGO_TARJETA = '23';
  static const String CUPON = 'Cupón';

  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  static bool isTestMode = false;
  static const String MENSAJE_NUEVA_CAR = ''; //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  static const String CLIENT_APP_CODE = ""; //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  static const String CLIENTE_APP_KEY = ""; //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  static const sloganCuriosity =
      'Curiosity, para las personas que quieren más.';
  static const aplicativoCuriosity = 'CURIOSITY';
  static const idAplicativoCuriosity = 1000001;
  static const aplicativoTitleCuriosity = 'Curiosity';
  static const packageNameCuriosity = 'com.agave.investment';
  static const appStoreIdCuriosity = '1488624281';
  static const uriDynamicCuriosity = 'https://TU.DOMINIO.COM/WEB';
  static const double lt = 39.678456;
  static const double lg = -104.970227;

  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static const _aplicativo = aplicativoCuriosity;
  static const _idAplicativo = idAplicativoCuriosity;
  static const _packageName = packageNameCuriosity;
  static const _appStoreId = appStoreIdCuriosity;
  static const _slogan = sloganCuriosity;
  static const _uriDynamic = uriDynamicCuriosity;
  static const aplicativoTitle = aplicativoTitleCuriosity;

  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static String get dominio => DOMINIO_GLOBAL;

  static String get slogan => _slogan;

  static String get aplicativo => _aplicativo;

  static int get idAplicativo => _idAplicativo;

  static get storage => 'https://firebasestorage.googleapis.com/v0/b/';

  static get uriPrefix =>
      'https://${aplicativo.toLowerCase()}.TU.DOMINIO.COM'; //La barra al final causa problemas en iOS

  static get uriDynamic => _uriDynamic;

  static get packageName => _packageName;

  static get appStoreId => _appStoreId; //bundleId

  static get isAndroid => UniversalPlatform.isAndroid;

  static get isIOS => UniversalPlatform.isIOS;

  static get isWeb => UniversalPlatform.isWeb;

  String operatingSystem() {
    return (Sistema.isAndroid
            ? Platform.operatingSystem
            : Sistema.isIOS
                ? Platform.operatingSystem
                : 'WEB')
        .toString();
  }
}
