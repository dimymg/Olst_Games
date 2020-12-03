import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_olst_games/app/models/game_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    controller.FindAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play List'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<List<GameModel>>(
        future: controller.gamesFuture,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return _makeListGames(snapshot.data);
              } else {
                return Container();
              }
              break;
            default:
              return Container();
          }
        },
      ),
    );
  }

  ListView _makeListGames(List<GameModel> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, int index) {
        var game = data[index];
        return ListTile(
          onTap: () => Modular.to.pushNamed('/player', arguments: game),
          leading: Container(
            width: 100,
            child: Image.network(
              game.image,
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            game.name,
            style: GoogleFonts.notoSans(),
          ),
          subtitle: Text(
            game.category,
            style: GoogleFonts.notoSans(),
          ),
          contentPadding: EdgeInsets.all(10),
        );
      },
    );
  }
}
