import 'package:app/config/environment.dart';
import 'package:flagsmith/flagsmith.dart';

final flagSmithClient = FlagsmithClient(
  apiKey: AppConfig.flagsmithApiKey,
  config: const FlagsmithConfig(),
);
