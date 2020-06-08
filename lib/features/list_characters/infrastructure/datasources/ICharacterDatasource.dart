
import 'package:flutter_marvel/features/list_characters/infrastructure/models/ListCharacterModel.dart';

abstract class ICharacterDatasource {
  Future<ListCharacterModel> list(int limit, int offset);
}
