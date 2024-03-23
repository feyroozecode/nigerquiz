import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nigerquiz/App/my_app.dart';
import 'package:nigerquiz/config/base_config/main_config.dart';
import 'package:nigerquiz/config/base_config/main_statics.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentry/sentry.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final MainConfig mainConfig = MainConfig();
  final MainStatics mainStatics = MainStatics();

  mainConfig.configEnv();

  await SentryFlutter.init(
    (options) {
      options.dsn = mainStatics.SENTRY_DSN;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => const ProviderScope(child: MyApp()),
  );

  testSentry();
  //runApp(const );
}

testSentry() async {
  try {
    Object? n;
    print(n);
  } catch (exception, stackTrace) {
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
    );
  }
}
