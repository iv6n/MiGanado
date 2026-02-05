import 'package:uuid/uuid.dart';

/// Rancher model - Personal information of the rancher
class Rancher {
  /// Unique identifier (UUID)
  final String id;

  /// Rancher name
  final String name;

  /// Branding mark (unique iron for marking animals)
  final String? brandingMark;

  /// Ear notch (characteristic ear cut)
  final String? earNotch;

  /// UPP (Livestock Production Unit - registration number)
  final String? upp;

  /// Contact phone
  final String? phone;

  /// Ranch address
  final String? address;

  /// Additional notes
  final String? notes;

  /// Record creation date
  final DateTime registrationDate;

  /// Last update date
  final DateTime lastUpdateDate;

  /// Constructor
  Rancher({
    String? id,
    required this.name,
    this.brandingMark,
    this.earNotch,
    this.upp,
    this.phone,
    this.address,
    this.notes,
    DateTime? registrationDate,
    DateTime? lastUpdateDate,
  })  : id = id ?? const Uuid().v4(),
        registrationDate = registrationDate ?? DateTime.now(),
        lastUpdateDate = lastUpdateDate ?? DateTime.now();

  /// Copy the object with updated optional fields
  Rancher copyWith({
    String? id,
    String? name,
    String? brandingMark,
    String? earNotch,
    String? upp,
    String? phone,
    String? address,
    String? notes,
    DateTime? registrationDate,
    DateTime? lastUpdateDate,
  }) {
    return Rancher(
      id: id ?? this.id,
      name: name ?? this.name,
      brandingMark: brandingMark ?? this.brandingMark,
      earNotch: earNotch ?? this.earNotch,
      upp: upp ?? this.upp,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      notes: notes ?? this.notes,
      registrationDate: registrationDate ?? this.registrationDate,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
    );
  }

  @override
  String toString() => 'Rancher(id: $id, name: $name)';
}
