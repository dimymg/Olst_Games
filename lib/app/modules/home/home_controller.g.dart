// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$gamesFutureAtom = Atom(name: '_HomeControllerBase.gamesFuture');

  @override
  ObservableFuture<List<GameModel>> get gamesFuture {
    _$gamesFutureAtom.reportRead();
    return super.gamesFuture;
  }

  @override
  set gamesFuture(ObservableFuture<List<GameModel>> value) {
    _$gamesFutureAtom.reportWrite(value, super.gamesFuture, () {
      super.gamesFuture = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void FindAll() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.FindAll');
    try {
      return super.FindAll();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
gamesFuture: ${gamesFuture}
    ''';
  }
}
