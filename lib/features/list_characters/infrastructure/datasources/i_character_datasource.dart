import 'package:flutter_marvel/features/list_characters/infrastructure/models/list_character_model.dart';

abstract class ICharacterDatasource {
  Future<ListCharacterModel> list(int limit, int offset);
}
