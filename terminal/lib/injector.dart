import 'package:get_it/get_it.dart';
import 'package:simple_time_punch_terminal/data/repositories/local_settings_repo_impl.dart';
import 'package:simple_time_punch_terminal/domain/repositories/local_settings_repo.dart';
import 'package:simple_time_punch_terminal/ui/screen/settings/cubit/local_settings_cubit.dart';

final injector = GetIt.instance;

initInjector() {
  // singletons
  injector.registerSingleton<LocalSettingsRepo>(LocalSettingsRepoImpl());

  // factories
  injector.registerFactory<LocalSettingsCubit>(() => LocalSettingsCubit(localSettingsRepo: injector.get()));
}
