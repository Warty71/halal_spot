import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal_spot/src/features/places/presentation/cubit/places_cubit.dart';
import 'package:halal_spot/src/features/places/presentation/cubit/places_state.dart';
import 'package:halal_spot/src/features/places/presentation/widgets/place_card.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halal Places'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<PlacesCubit>().loadPlaces(),
        child: const Icon(Icons.refresh),
      ),
      body: BlocBuilder<PlacesCubit, PlacesState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.errorMessage!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<PlacesCubit>().loadPlaces(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state.places.isEmpty) {
            return const Center(
              child: Text('No places found'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: state.places.length,
            itemBuilder: (context, index) {
              return PlaceCard(place: state.places[index]);
            },
          );
        },
      ),
    );
  }
}