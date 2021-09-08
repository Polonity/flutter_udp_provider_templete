import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'my_model.freezed.dart';

@freezed
class MyModel with _$MyModel {
  const factory MyModel({int? seqNum, String? msg}) = _MyModel;
}
