enum CertificateType {
  basic('Basic', 'Meets minimum halal requirements'),
  standard('Standard', 'Follows comprehensive halal guidelines'),
  premium('Premium', 'Exceeds halal standards with additional certifications');

  final String label;
  final String description;

  const CertificateType(this.label, this.description);
}