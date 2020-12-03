import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_olst_games/app/app_controller.dart';
import 'package:flutter_olst_games/app/app_widget.dart';
import 'package:flutter_olst_games/app/modules/home/home_module.dart';
import 'package:flutter_olst_games/app/repositories/game_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => GameRepository())
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
