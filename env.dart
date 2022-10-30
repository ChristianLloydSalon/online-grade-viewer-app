import 'dart:io';
import 'package:dotenv/dotenv.dart';
import 'package:app/common/helper/custom_formatter.dart';

Future<void> main() async {
  final env = DotEnv(includePlatformEnvironment: false)..load();

  final variables = [
    'FLAGSMITH_API_KEY',
  ];

  const filename = 'lib/config/environment.dart';

  var config = 'class AppConfig {\n';

  for (var variable in variables) {
    final value = env[variable] ?? '';

    config += "  static String ${toCamelCase(variable)} = '$value';\n";
  }

  config += '}\n';
  File(filename).writeAsString(config);
}
