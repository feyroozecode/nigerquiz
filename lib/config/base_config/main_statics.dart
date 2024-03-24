import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainStatics {
  
  String? sentry_dsn = dotenv.env["SENTRY_DSN"];
}
