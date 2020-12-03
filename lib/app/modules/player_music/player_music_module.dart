import 'package:flutter_olst_games/app/repositories/game_repository.dart';

import 'player_music_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'player_music_page.dart';

class PlayerMusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerMusicController(i.get<GameRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PlayerMusicPage(game: args.data)),
      ];

  static Inject get to => Inject<PlayerMusicModule>.of();
}
