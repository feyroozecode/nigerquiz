import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainStatics {
  
  String? SENTRY_DSN = dotenv.env["SENTRY_DSN"];
}
