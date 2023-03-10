import 'package:simple_absen/features/application/bloc/application_bloc.dart';

import 'injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<ApplicationBloc>(
        ApplicationBloc(localStorageService: injector()));

    // injector.registerFactory<DogImageRandomBloc>(
    //   () => DogImageRandomBloc(
    //     dogImageRandomRepository: injector(),
    //     logService: injector(),
    //   ),
    // );
    //
    // injector.registerFactory<DemoBloc>(
    //   () => DemoBloc(
    //     dogImageRandomRepository: injector(),
    //     logService: injector(),
    //   ),
    // );
  }
}
