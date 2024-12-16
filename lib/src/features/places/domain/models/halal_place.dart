// lib/src/features/places/domain/models/halal_place.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halal_spot/src/core/enums/certificate_type.dart';

part 'halal_place.freezed.dart';
part 'halal_place.g.dart';

@freezed
class HalalPlace with _$HalalPlace {
  const factory HalalPlace({
    required String id,
    required String name,
    required String address,
    required CertificateType certificateType,
    required DateTime certificateExpiry,
    required List<String> foodTypes,
    required List<String> services,
    required Map<String, bool> criteria,
    String? certificateImageUrl,
    String? description,
  }) = _HalalPlace;

  factory HalalPlace.fromJson(Map<String, dynamic> json) => 
      _$HalalPlaceFromJson(json);
}