import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class FeatureToggle extends Equatable {
  final bool authentication;
  final bool requestGrade;

  const FeatureToggle({
    this.authentication = false,
    this.requestGrade = false,
  });

  FeatureToggle copyWith({
    bool? authentication,
    bool? requestGrade,
  }) {
    return FeatureToggle(
      authentication: authentication ?? this.authentication,
      requestGrade: requestGrade ?? this.requestGrade,
    );
  }

  @override
  List<Object?> get props => [
        authentication,
        requestGrade,
      ];
}
