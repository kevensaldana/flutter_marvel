import 'package:flutter/foundation.dart';
import 'package:flutter_marvel/features/list_characters/application/usecases/get_all_character_usecase.dart';
import 'package:flutter_marvel/features/list_characters/presentation/models/character.dart';
import 'package:flutter_marvel/features/list_characters/presentation/models/list_character.dart';

class HomePageViewModel {
  ListCharacter _listCharacter;
  ListCharacter get listCharacter => _listCharacter;

  final GetAllCharacterUseCase _getAllCharacterUseCase;

  HomePageViewModel({@required GetAllCharacterUseCase getAllCharacterUseCase})
      : _getAllCharacterUseCase = getAllCharacterUseCase;

  Future<void> list() async {
    var result = await _getAllCharacterUseCase.execute(20, 0);
    _listCharacter = ListCharacter(
        count: result.count,
        limit: result.limit,
        result: result.result.map((e) => Character(
            name: e.name,
            id: e.id,
            description: e.description,
            image: e.image)).toList(),
        total: result.total);
  }
}
