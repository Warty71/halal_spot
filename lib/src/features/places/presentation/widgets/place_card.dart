import 'package:flutter/material.dart';
import 'package:halal_spot/src/core/enums/certificate_type.dart';
import 'package:halal_spot/src/features/places/domain/models/halal_place.dart';

class PlaceCard extends StatelessWidget {
  final HalalPlace place;

  const PlaceCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    place.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                _buildCertificateBadge(context),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              place.address,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ...place.foodTypes.map((type) => _buildChip(type)),
                ...place.services.map((service) => _buildChip(service)),
              ],
            ),
            const SizedBox(height: 12),
            _buildCriteriaSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCertificateBadge(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getCertificateColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        place.certificateType.label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color _getCertificateColor() {
    switch (place.certificateType) {
      case CertificateType.basic:
        return Colors.blue;
      case CertificateType.standard:
        return Colors.green;
      case CertificateType.premium:
        return Colors.purple;
    }
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _buildCriteriaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: place.criteria.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              Icon(
                entry.value ? Icons.check_circle : Icons.cancel,
                color: entry.value ? Colors.green : Colors.red,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(entry.key),
            ],
          ),
        );
      }).toList(),
    );
  }
}