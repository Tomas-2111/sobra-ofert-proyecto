import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_persona_widget.dart' show RegistroPersonaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroPersonaModel extends FlutterFlowModel<RegistroPersonaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtIdP widget.
  FocusNode? txtIdPFocusNode;
  TextEditingController? txtIdPTextController;
  String? Function(BuildContext, String?)? txtIdPTextControllerValidator;
  String? _txtIdPTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Telefono es obligatorio';
    }

    return null;
  }

  // State field(s) for txtFechaNac widget.
  FocusNode? txtFechaNacFocusNode;
  TextEditingController? txtFechaNacTextController;
  late MaskTextInputFormatter txtFechaNacMask;
  String? Function(BuildContext, String?)? txtFechaNacTextControllerValidator;
  String? _txtFechaNacTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Fecha de Nacimiento es obligatoria';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtIdPTextControllerValidator = _txtIdPTextControllerValidator;
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    txtFechaNacTextControllerValidator = _txtFechaNacTextControllerValidator;
  }

  @override
  void dispose() {
    txtIdPFocusNode?.dispose();
    txtIdPTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtFechaNacFocusNode?.dispose();
    txtFechaNacTextController?.dispose();
  }
}
