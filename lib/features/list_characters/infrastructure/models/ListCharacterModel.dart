import 'package:flutter_marvel/features/list_characters/domain/entities/Character.dart';
import 'package:flutter_marvel/features/list_characters/domain/entities/ListCharacter.dart';
import 'package:meta/meta.dart';

class ListCharacterModel extends ListCharacter {
  ListCharacterModel(
      {@required int count,
      @required int limit,
      List<Character> result,
      @required int total})
      : super(count: count, total: total, result: result, limit: limit);

  factory ListCharacterModel.fromJson(Map<String, dynamic> json) {
    // TODO
    return ListCharacterModel(
      count: (json['count'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );
  }
}
