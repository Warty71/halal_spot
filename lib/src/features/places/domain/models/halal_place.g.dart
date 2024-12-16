// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'halal_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HalalPlaceImpl _$$HalalPlaceImplFromJson(Map<String, dynamic> json) =>
    _$HalalPlaceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      certificateType:
          $enumDecode(_$CertificateTypeEnumMap, json['certificateType']),
      certificateExpiry: DateTime.parse(json['certificateExpiry'] as String),
      foodTypes:
          (json['foodTypes'] as List<dynamic>).map((e) => e as String).toList(),
      services:
          (json['services'] as List<dynamic>).map((e) => e as String).toList(),
      criteria: Map<String, bool>.from(json['criteria'] as Map),
      certificateImageUrl: json['certificateImageUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$HalalPlaceImplToJson(_$HalalPlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'certificateType': _$CertificateTypeEnumMap[instance.certificateType]!,
      'certificateExpiry': instance.certificateExpiry.toIso8601String(),
      'foodTypes': instance.foodTypes,
      'services': instance.services,
      'criteria': instance.criteria,
      'certificateImageUrl': instance.certificateImageUrl,
      'description': instance.description,
    };

const _$CertificateTypeEnumMap = {
  CertificateType.basic: 'basic',
  CertificateType.standard: 'standard',
  CertificateType.premium: 'premium',
};
