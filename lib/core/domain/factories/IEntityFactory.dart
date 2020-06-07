import 'package:flutter/foundation.dart';
import 'package:flutter_marvel/core/domain/entities/Character.dart';

abstract class IEntityFactory {
  Character newBook({
    @required String name,
    @required String image,
    @required int id,
    String description,
  });

}