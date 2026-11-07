import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComerciosRecord extends FirestoreRecord {
  ComerciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idComercio" field.
  String? _idComercio;
  String get idComercio => _idComercio ?? '';
  bool hasIdComercio() => _idComercio != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "tipoComercio" field.
  String? _tipoComercio;
  String get tipoComercio => _tipoComercio ?? '';
  bool hasTipoComercio() => _tipoComercio != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "fechaCreacion" field.
  String? _fechaCreacion;
  String get fechaCreacion => _fechaCreacion ?? '';
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _idComercio = snapshotData['idComercio'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _correo = snapshotData['correo'] as String?;
    _tipoComercio = snapshotData['tipoComercio'] as String?;
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
    _distrito = snapshotData['distrito'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comercios');

  static Stream<ComerciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComerciosRecord.fromSnapshot(s));

  static Future<ComerciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComerciosRecord.fromSnapshot(s));

  static ComerciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComerciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComerciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComerciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComerciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComerciosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createComerciosRecordData({
  String? idComercio,
  String? nombre,
  String? correo,
  String? tipoComercio,
  String? provincia,
  String? canton,
  String? distrito,
  String? direccion,
  String? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idComercio': idComercio,
      'nombre': nombre,
      'correo': correo,
      'tipoComercio': tipoComercio,
      'provincia': provincia,
      'canton': canton,
      'distrito': distrito,
      'direccion': direccion,
      'fechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComerciosRecordDocumentEquality implements Equality<ComerciosRecord> {
  const ComerciosRecordDocumentEquality();

  @override
  bool equals(ComerciosRecord? e1, ComerciosRecord? e2) {
    return e1?.idComercio == e2?.idComercio &&
        e1?.nombre == e2?.nombre &&
        e1?.correo == e2?.correo &&
        e1?.tipoComercio == e2?.tipoComercio &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito &&
        e1?.direccion == e2?.direccion &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(ComerciosRecord? e) => const ListEquality().hash([
        e?.idComercio,
        e?.nombre,
        e?.correo,
        e?.tipoComercio,
        e?.provincia,
        e?.canton,
        e?.distrito,
        e?.direccion,
        e?.fechaCreacion
      ]);

  @override
  bool isValidKey(Object? o) => o is ComerciosRecord;
}
