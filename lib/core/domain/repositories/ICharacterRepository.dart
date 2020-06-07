import 'package:flutter_marvel/core/domain/entities/Character.dart';

abstract class ICharacterRepository {
  Future<List<Character>> findAll(int limit, int offset);
}
