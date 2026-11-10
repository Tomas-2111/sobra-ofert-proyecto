import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_c_widget.dart' show RegistroCWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroCModel extends FlutterFlowModel<RegistroCWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtIdC widget.
  FocusNode? txtIdCFocusNode;
  TextEditingController? txtIdCTextController;
  String? Function(BuildContext, String?)? txtIdCTextControllerValidator;
  String? _txtIdCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cédula o Identificación es obligatorio';
    }

    return null;
  }

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre es obligatorio';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Correo es obligatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Debe ingresar un email valido';
    }
    return null;
  }

  // State field(s) for txtFechaC widget.
  FocusNode? txtFechaCFocusNode;
  TextEditingController? txtFechaCTextController;
  late MaskTextInputFormatter txtFechaCMask;
  String? Function(BuildContext, String?)? txtFechaCTextControllerValidator;
  String? _txtFechaCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Telefono es obligatorio';
    }

    return null;
  }

  // State field(s) for txtTipoC widget.
  FocusNode? txtTipoCFocusNode;
  TextEditingController? txtTipoCTextController;
  String? Function(BuildContext, String?)? txtTipoCTextControllerValidator;
  String? _txtTipoCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Fecha de Nacimiento es obligatoria';
    }

    return null;
  }

  // State field(s) for txtProvincia widget.
  FocusNode? txtProvinciaFocusNode;
  TextEditingController? txtProvinciaTextController;
  String? Function(BuildContext, String?)? txtProvinciaTextControllerValidator;
  String? _txtProvinciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Provincia is required';
    }

    return null;
  }

  // State field(s) for txtCanton widget.
  FocusNode? txtCantonFocusNode;
  TextEditingController? txtCantonTextController;
  String? Function(BuildContext, String?)? txtCantonTextControllerValidator;
  String? _txtCantonTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Canton is required';
    }

    return null;
  }

  // State field(s) for txtDistrito widget.
  FocusNode? txtDistritoFocusNode;
  TextEditingController? txtDistritoTextController;
  String? Function(BuildContext, String?)? txtDistritoTextControllerValidator;
  String? _txtDistritoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Distrito is required';
    }

    return null;
  }

  // State field(s) for txtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  String? _txtDireccionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Distrito is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtIdCTextControllerValidator = _txtIdCTextControllerValidator;
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtFechaCTextControllerValidator = _txtFechaCTextControllerValidator;
    txtTipoCTextControllerValidator = _txtTipoCTextControllerValidator;
    txtProvinciaTextControllerValidator = _txtProvinciaTextControllerValidator;
    txtCantonTextControllerValidator = _txtCantonTextControllerValidator;
    txtDistritoTextControllerValidator = _txtDistritoTextControllerValidator;
    txtDireccionTextControllerValidator = _txtDireccionTextControllerValidator;
  }

  @override
  void dispose() {
    txtIdCFocusNode?.dispose();
    txtIdCTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtFechaCFocusNode?.dispose();
    txtFechaCTextController?.dispose();

    txtTipoCFocusNode?.dispose();
    txtTipoCTextController?.dispose();

    txtProvinciaFocusNode?.dispose();
    txtProvinciaTextController?.dispose();

    txtCantonFocusNode?.dispose();
    txtCantonTextController?.dispose();

    txtDistritoFocusNode?.dispose();
    txtDistritoTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();
  }
}
