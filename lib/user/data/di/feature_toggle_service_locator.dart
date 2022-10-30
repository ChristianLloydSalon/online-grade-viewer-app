import 'package:app/user/data/remote/feature_toggle_remote_source.dart';
import 'package:app/user/data/repository/feature_toggle_repository.dart';

import '../service/feature_toggle_service.dart';

final featureToggleRemoteSource = FeatureToggleRemoteSource(flagSmithClient);
final featureToggleRepository =
    FeatureToggleRepository(featureToggleRemoteSource);
