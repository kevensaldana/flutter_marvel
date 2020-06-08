
import 'package:flutter_marvel/features/list_characters/domain/entities/Character.dart';
import 'package:meta/meta.dart';

class CharacterModel extends Character{
  CharacterModel(
      {@required String name,
        @required String image,
        @required int id,
        @required String description})
      : super(name: name, image: image, id: id, description: description);

}
