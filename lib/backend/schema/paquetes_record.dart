import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaquetesRecord extends FirestoreRecord {
  PaquetesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idPaquete" field.
  int? _idPaquete;
  int get idPaquete => _idPaquete ?? 0;
  bool hasIdPaquete() => _idPaquete != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "cantidadDisponible" field.
  int? _cantidadDisponible;
  int get cantidadDisponible => _cantidadDisponible ?? 0;
  bool hasCantidadDisponible() => _cantidadDisponible != null;

  // "disponibleHasta" field.
  String? _disponibleHasta;
  String get disponibleHasta => _disponibleHasta ?? '';
  bool hasDisponibleHasta() => _disponibleHasta != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "idComercio" field.
  DocumentReference? _idComercio;
  DocumentReference? get idComercio => _idComercio;
  bool hasIdComercio() => _idComercio != null;

  void _initializeFields() {
    _idPaquete = castToType<int>(snapshotData['idPaquete']);
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _cantidadDisponible = castToType<int>(snapshotData['cantidadDisponible']);
    _disponibleHasta = snapshotData['disponibleHasta'] as String?;
    _estado = snapshotData['estado'] as String?;
    _idComercio = snapshotData['idComercio'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paquetes');

  static Stream<PaquetesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaquetesRecord.fromSnapshot(s));

  static Future<PaquetesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaquetesRecord.fromSnapshot(s));

  static PaquetesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaquetesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaquetesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaquetesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaquetesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaquetesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPaquetesRecordData({
  int? idPaquete,
  String? titulo,
  String? descripcion,
  double? precio,
  int? cantidadDisponible,
  String? disponibleHasta,
  String? estado,
  DocumentReference? idComercio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPaquete': idPaquete,
      'titulo': titulo,
      'descripcion': descripcion,
      'precio': precio,
      'cantidadDisponible': cantidadDisponible,
      'disponibleHasta': disponibleHasta,
      'estado': estado,
      'idComercio': idComercio,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaquetesRecordDocumentEquality implements Equality<PaquetesRecord> {
  const PaquetesRecordDocumentEquality();

  @override
  bool equals(PaquetesRecord? e1, PaquetesRecord? e2) {
    return e1?.idPaquete == e2?.idPaquete &&
        e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.cantidadDisponible == e2?.cantidadDisponible &&
        e1?.disponibleHasta == e2?.disponibleHasta &&
        e1?.estado == e2?.estado &&
        e1?.idComercio == e2?.idComercio;
  }

  @override
  int hash(PaquetesRecord? e) => const ListEquality().hash([
        e?.idPaquete,
        e?.titulo,
        e?.descripcion,
        e?.precio,
        e?.cantidadDisponible,
        e?.disponibleHasta,
        e?.estado,
        e?.idComercio
      ]);

  @override
  bool isValidKey(Object? o) => o is PaquetesRecord;
}
