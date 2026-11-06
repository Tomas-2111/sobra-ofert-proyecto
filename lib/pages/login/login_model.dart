import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContrasenna widget.
  late FocusNode txtContrasennaPasswordVisibilityFocusNode;
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaTextController;
  late bool txtContrasennaVisibility;
  String? Function(BuildContext, String?)?
      txtContrasennaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtContrasennaPasswordVisibilityFocusNode = FocusNode();
    txtContrasennaVisibility = false;
  }

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaTextController?.dispose();
    txtContrasennaPasswordVisibilityFocusNode.dispose();
  }
}
