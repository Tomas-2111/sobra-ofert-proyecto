import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'confirmar_paquete_widget.dart' show ConfirmarPaqueteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ConfirmarPaqueteModel extends FlutterFlowModel<ConfirmarPaqueteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaTextController;
  late MaskTextInputFormatter txtFechaMask;
  String? Function(BuildContext, String?)? txtFechaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaTextController?.dispose();
  }
}
