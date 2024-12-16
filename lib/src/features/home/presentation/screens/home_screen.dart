import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halal_spot/src/core/routing/utilities/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 16),
              _buildSearchField(),
              const SizedBox(height: 24),
              _buildFeatureGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'Halal Spot',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildHeader() {
    return const Text(
      'Find Halal Food Near You',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for restaurants...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildFeatureCard(
            icon: Icons.map,
            title: 'Find on Map',
            onTap: () => context.push(Routes.places),
          ),
          _buildFeatureCard(
            icon: Icons.verified,
            title: 'Verified Places',
            onTap: () => context.push(Routes.places),
          ),
          _buildFeatureCard(
            icon: Icons.favorite,
            title: 'Favorites',
            onTap: () => context.push(Routes.places),
          ),
          _buildFeatureCard(
            icon: Icons.restaurant_menu,
            title: 'Categories',
            onTap: () => context.push(Routes.places),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFeatureIcon(icon),
            const SizedBox(height: 8),
            _buildFeatureTitle(title),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon) {
    return Icon(
      icon,
      size: 40,
      color: Colors.green,
    );
  }

  Widget _buildFeatureTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}