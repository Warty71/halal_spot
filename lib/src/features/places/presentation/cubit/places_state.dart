import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halal_spot/src/features/places/domain/models/halal_place.dart';

part 'places_state.freezed.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState({
    @Default([]) List<HalalPlace> places,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _PlacesState;
}