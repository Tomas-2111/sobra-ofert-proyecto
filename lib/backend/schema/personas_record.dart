import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonasRecord extends FirestoreRecord {
  PersonasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "fechaNacimiento" field.
  String? _fechaNacimiento;
  String get fechaNacimiento => _fechaNacimiento ?? '';
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _id = snapshotData['id'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _fechaNacimiento = snapshotData['fechaNacimiento'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personas');

  static Stream<PersonasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonasRecord.fromSnapshot(s));

  static Future<PersonasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonasRecord.fromSnapshot(s));

  static PersonasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPersonasRecordData({
  String? nombre,
  String? id,
  String? telefono,
  String? fechaNacimiento,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'id': id,
      'telefono': telefono,
      'fechaNacimiento': fechaNacimiento,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonasRecordDocumentEquality implements Equality<PersonasRecord> {
  const PersonasRecordDocumentEquality();

  @override
  bool equals(PersonasRecord? e1, PersonasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.id == e2?.id &&
        e1?.telefono == e2?.telefono &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PersonasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.id, e?.telefono, e?.fechaNacimiento, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is PersonasRecord;
}
