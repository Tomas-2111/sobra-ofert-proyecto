import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_persona_widget.dart' show RegistroPersonaWidget;
import 'package:flutter/material.dart';

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
  String? Function(BuildContext, String?)? txtFechaNacTextControllerValidator;
  String? _txtFechaNacTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Fecha de Nacimiento es obligatoria';
    }

    return null;
  }

  // State field(s) for txtContrasenna widget.
  late FocusNode txtContrasennaPasswordVisibilityFocusNode;
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaTextController;
  late bool txtContrasennaVisibility;
  String? Function(BuildContext, String?)?
      txtContrasennaTextControllerValidator;
  String? _txtContrasennaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contraseña es obligatoria';
    }

    return null;
  }

  // State field(s) for txtConfirmarC widget.
  late FocusNode txtConfirmarCPasswordVisibilityFocusNode;
  FocusNode? txtConfirmarCFocusNode;
  TextEditingController? txtConfirmarCTextController;
  late bool txtConfirmarCVisibility;
  String? Function(BuildContext, String?)? txtConfirmarCTextControllerValidator;
  String? _txtConfirmarCTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar Contraseña es obligatoria';
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
    txtContrasennaPasswordVisibilityFocusNode = FocusNode();
    txtContrasennaVisibility = false;
    txtContrasennaTextControllerValidator =
        _txtContrasennaTextControllerValidator;
    txtConfirmarCPasswordVisibilityFocusNode = FocusNode();
    txtConfirmarCVisibility = false;
    txtConfirmarCTextControllerValidator =
        _txtConfirmarCTextControllerValidator;
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

    txtContrasennaFocusNode?.dispose();
    txtContrasennaTextController?.dispose();
    txtContrasennaPasswordVisibilityFocusNode.dispose();
    txtConfirmarCFocusNode?.dispose();
    txtConfirmarCTextController?.dispose();
    txtConfirmarCPasswordVisibilityFocusNode.dispose();
  }
}
