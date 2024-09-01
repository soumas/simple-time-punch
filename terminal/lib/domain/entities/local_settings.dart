import 'package:dart_mappable/dart_mappable.dart';
import 'package:dronedpace_logbook_terminal/mappable.dart';

part 'local_settings.mapper.dart';

@mappableModelClass
class LocalSettings with LocalSettingsMappable {
  LocalSettings({
    required this.apiEndpoint,
    required this.apiKey,
  });

  final String apiEndpoint;
  final String apiKey;
}
