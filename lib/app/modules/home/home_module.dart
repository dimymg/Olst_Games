import 'package:flutter_olst_games/app/modules/player_music/player_music_module.dart';
import 'package:flutter_olst_games/app/repositories/game_repository.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<GameRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/player', module: PlayerMusicModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
