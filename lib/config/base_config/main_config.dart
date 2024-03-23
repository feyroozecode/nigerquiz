import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainConfig {

  void baseConfiguration() {
    configEnv();
  }

  void configEnv() async {
    await dotenv.load(fileName: ".env");
  }

}