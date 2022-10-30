import 'package:app/user/data/di/feature_toggle_service_locator.dart';
import 'package:app/user/data/model/output/feature_toggle.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/feature_toggle_repository.dart';

final featureToggleViewModel =
    StateNotifierProvider<FeatureToggleViewModel, FeatureToggle>(
  (ref) => FeatureToggleViewModel(featureToggleRepository),
);

class FeatureToggleViewModel extends StateNotifier<FeatureToggle> {
  final FeatureToggleRepository _repository;

  FeatureToggleViewModel(this._repository) : super(const FeatureToggle());

  FeatureToggleViewModel init() {
    Future(() => load());
    return this;
  }

  Future<void> load() async {
    state = await _repository.load();
  }
}
