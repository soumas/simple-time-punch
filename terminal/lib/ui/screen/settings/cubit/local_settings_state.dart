// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_mappable/dart_mappable.dart';

import 'package:model_flight_logbook/domain/entities/local_settings.dart';
import 'package:model_flight_logbook/mappable.dart';

part 'local_settings_state.mapper.dart';

@mappableStateClass
class LocalSettingsState with LocalSettingsStateMappable {
  final bool locked;
  final bool loading;
  final LocalSettings? settings;
  final dynamic error;
  LocalSettingsState({
    this.locked = true,
    this.loading = false,
    this.settings,
    this.error,
  });
}
