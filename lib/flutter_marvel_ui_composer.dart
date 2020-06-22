import 'package:flutter/material.dart';
import 'package:flutter_marvel/features/list_characters/application/usecases/get_all_character_usecase.dart';
import 'package:flutter_marvel/features/list_characters/domain/repositories/i_character_repository.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/remote_character_datasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/repositories/character_repository.dart';
import 'package:flutter_marvel/features/list_characters/presentation/pages/home_page.dart';
import 'package:http/http.dart' as http;

import 'features/list_characters/presentation/states/home_page_bloc.dart';
import 'features/list_characters/presentation/viewmodels/home_page_view_model.dart';

class FlutterMarvelUiComposer {
  static RemoteCharacterDataSource _datasource;
  static ICharacterRepository _characterRepository;

  static configure() {
    _datasource = RemoteCharacterDataSource(client: http.Client());
    _characterRepository = CharacterRepository(datasource: _datasource);
  }

  static Widget composeHomePage() {
    GetAllCharacterUseCase getAllCharacterUseCase =
        GetAllCharacterUseCase(characterRepository: _characterRepository);
    HomePageViewModel homePageViewModel =
        HomePageViewModel(getAllCharacterUseCase: getAllCharacterUseCase);
    HomePageBloc homePageBloc = HomePageBloc(homePageViewModel);
    return HomePage(
      title: 'Flutter Characters',
      bloc: homePageBloc,
    );
  }
}
