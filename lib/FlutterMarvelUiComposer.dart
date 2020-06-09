import 'package:flutter/material.dart';
import 'package:flutter_marvel/features/list_characters/domain/repositories/ICharacterRepository.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/RemoteCharacterDatasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/factories/EntityFactory.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/repositories/CharacterRepository.dart';
import 'package:flutter_marvel/features/list_characters/presentation/pages/HomePage.dart';
import 'package:http/http.dart' as http;

class FlutterMarvelUiComposer{
  static RemoteCharacterDataSource _datasource;
  static final EntityFactory _entityFactory = EntityFactory();
  static ICharacterRepository _characterRepository;

  static configure() {
    _datasource = RemoteCharacterDataSource(client: http.Client());
    _characterRepository = CharacterRepository(datasource: _datasource);
  }

  static Widget composeHomePage() {
    return HomePage(title: 'Flutter Characters');
  }

}