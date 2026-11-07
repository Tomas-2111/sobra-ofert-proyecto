import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
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
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaTextController?.dispose();
    txtContrasennaPasswordVisibilityFocusNode.dispose();
    txtConfirmarCFocusNode?.dispose();
    txtConfirmarCTextController?.dispose();
    txtConfirmarCPasswordVisibilityFocusNode.dispose();
  }
}
