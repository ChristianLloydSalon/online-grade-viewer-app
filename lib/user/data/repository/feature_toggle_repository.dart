import 'package:app/user/data/remote/feature_toggle_remote_source.dart';

import '../model/output/feature_toggle.dart';

class FeatureToggleRepository {
  final FeatureToggleRemoteSource _remoteSource;

  const FeatureToggleRepository(this._remoteSource);

  Future<FeatureToggle> load() async {
    return await _remoteSource.load();
  }
}
