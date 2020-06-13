import 'package:flutter_marvel/features/list_characters/domain/repositories/i_character_repository.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/i_character_datasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/models/list_character_model.dart';

class CharacterRepository implements ICharacterRepository {
  ICharacterDatasource _datasource;
  CharacterRepository({ICharacterDatasource datasource})
      : _datasource = datasource;

  @override
  Future<ListCharacterModel> list(int limit, int offset) {
    return _datasource.list(limit, offset);
  }
}
