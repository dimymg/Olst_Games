import 'package:flutter_olst_games/app/models/game_model.dart';
import 'package:flutter_olst_games/app/repositories/game_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';


class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {


   final GameRepository gameRepository;

   _HomeControllerBase(this.gameRepository);

   @observable
   ObservableFuture<List<GameModel>> gamesFuture;
    
    @action
    // ignore: non_constant_identifier_names
    void  FindAll() {
      gamesFuture =  ObservableFuture(gameRepository.findAllGames());
    }



}
