import 'package:isar/isar.dart';

part 'photo_entity.g.dart';

@collection
class PhotoEntity {
  Id? id;

  @Index()
  late String uuid;

  @Index()
  late String animalUuid; // reference to animal

  late String localPath; // path of local file

  @Index()
  late DateTime captureDate;
  late String? description; // notes about the photo
  late String? photoTitle;

  // Audit fields
  late String recordedBy;
  late DateTime registrationDate;
  late DateTime? updateDate;

  PhotoEntity({
    required this.uuid,
    required this.animalUuid,
    required this.localPath,
    required this.captureDate,
    this.description,
    this.photoTitle,
    required this.recordedBy,
    required this.registrationDate,
    this.updateDate,
  });

  PhotoEntity copyWith({
    String? uuid,
    String? animalUuid,
    String? localPath,
    DateTime? captureDate,
    String? description,
    String? photoTitle,
    String? recordedBy,
    DateTime? registrationDate,
    DateTime? updateDate,
  }) {
    return PhotoEntity(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      localPath: localPath ?? this.localPath,
      captureDate: captureDate ?? this.captureDate,
      description: description ?? this.description,
      photoTitle: photoTitle ?? this.photoTitle,
      recordedBy: recordedBy ?? this.recordedBy,
      registrationDate: registrationDate ?? this.registrationDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }
}
