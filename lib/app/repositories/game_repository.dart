import 'package:dio/dio.dart';
import 'package:flutter_olst_games/app/models/game_model.dart';

class GameRepository{


  Future<List<GameModel>> findAllGames(){
    var dio = Dio();
    return dio.get('http://localhost:3000/games')
    .then((res) => res.data.map<GameModel>((g) => GameModel.fromJson(g)).toList());
  }

Future<GameModel> findById(String id){
  return Dio()
  .get('http://localhost:3000/games/$id')
  .then((res) => GameModel.fromJson(res.data));
}

}