import 'package:flagsmith/flagsmith.dart';

import '../model/output/feature_toggle.dart';

class FeatureToggleRemoteSource {
  final FlagsmithClient flagSmithClient;

  const FeatureToggleRemoteSource(this.flagSmithClient);

  Future<FeatureToggle> load() async {
    final flags = await flagSmithClient.getFeatureFlags(reload: true);

    final features = {
      for (var flag in flags) flag.feature.name: flag.enabled ?? false
    };

    return FeatureToggle(
      authentication: features['authentication'] ?? false,
      requestGrade: features['request-grade'] ?? false,
    );
  }
}
