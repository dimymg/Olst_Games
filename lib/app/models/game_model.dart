import 'package:flutter_olst_games/app/models/music_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_model.g.dart';

@JsonSerializable()
class GameModel {

  @JsonKey(name: "_id")
  String id;
   @JsonKey(name: "nome")
  String name;
   @JsonKey(name: "imagem")
  String image;
   @JsonKey(name: "categoria")
  String category;
   @JsonKey(name: "musicas")
  List<MusicModel> musics;
   
   GameModel({
      this.id,
      this.name,
      this.image,
      this.category,
      this.musics,
      });

  factory GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameModelToJson(this);
}