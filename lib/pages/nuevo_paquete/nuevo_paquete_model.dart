import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nuevo_paquete_widget.dart' show NuevoPaqueteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NuevoPaqueteModel extends FlutterFlowModel<NuevoPaqueteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  String? _txtTituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Titulo es obligatorio';
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  String? _txtPrecioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Precio es obligatorio';
    }

    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  String? _txtCantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cantidad Disponible es obligatoria';
    }

    if (!RegExp('^\\d+(\\.\\d+)?\$').hasMatch(val)) {
      return 'Solo valores numericos y decimales';
    }
    return null;
  }

  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaTextController;
  late MaskTextInputFormatter txtFechaMask;
  String? Function(BuildContext, String?)? txtFechaTextControllerValidator;
  String? _txtFechaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Disponible Hasta es obligatorio';
    }

    if (!RegExp('^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/\\d{4}\$')
        .hasMatch(val)) {
      return 'Favor incluir una fecha en formato dd/mm/yyyy ';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtTituloTextControllerValidator = _txtTituloTextControllerValidator;
    txtPrecioTextControllerValidator = _txtPrecioTextControllerValidator;
    txtCantidadTextControllerValidator = _txtCantidadTextControllerValidator;
    txtFechaTextControllerValidator = _txtFechaTextControllerValidator;
  }

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
