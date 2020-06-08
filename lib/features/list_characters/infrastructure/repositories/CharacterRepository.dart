import 'package:flutter_marvel/features/list_characters/domain/repositories/ICharacterRepository.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/ICharacterDatasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/models/ListCharacterModel.dart';

class CharacterRepository implements ICharacterRepository {
  ICharacterDatasource _datasource;
  CharacterRepository({ICharacterDatasource datasource})
      : _datasource = datasource;

  @override
  Future<ListCharacterModel> list(int limit, int offset) {
    return _datasource.list(limit, offset);
  }
}
