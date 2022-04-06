import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_model.freezed.dart';

@freezed
class Place with _$Place {
  const factory Place(
      {@Default('') String name,
      @Default('') String address,
      int? distance,
      int? minPrice,
      double? avgRating,
      int? reviewsNumber,
  @Default('') String imageAsset,
  @Default('') String backgroundAsset,

      }) = _Initial;
}
