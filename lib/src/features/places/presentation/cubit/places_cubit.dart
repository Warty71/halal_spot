import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal_spot/src/core/enums/certificate_type.dart';
import 'package:halal_spot/src/features/places/domain/models/halal_place.dart';
import 'package:halal_spot/src/features/places/presentation/cubit/places_state.dart';

class PlacesCubit extends Cubit<PlacesState> {
  PlacesCubit() : super(const PlacesState());

  Future<void> loadPlaces() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    
    try {
      final places = await _fetchPlaces();
      emit(state.copyWith(
        places: places,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Failed to load places: ${e.toString()}',
      ));
    }
  }


  // Temporary method for testing
  Future<List<HalalPlace>> _fetchPlaces() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      HalalPlace(
        id: '1',
        name: 'Halal Restaurant 1',
        address: 'Street 1, City',
        certificateType: CertificateType.premium,
        certificateExpiry: DateTime.now().add(const Duration(days: 365)),
        foodTypes: ['Restaurant', 'Fast Food'],
        services: ['Dine-in', 'Takeaway'],
        criteria: {
          'Halal Ingredients': true,
          'Separate Kitchen': true,
          'Muslim Staff': true,
        },
      ),
    ];
  }
}