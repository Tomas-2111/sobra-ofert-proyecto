import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_load_model.dart';
export 'home_load_model.dart';

class HomeLoadWidget extends StatefulWidget {
  const HomeLoadWidget({super.key});

  static String routeName = 'HomeLoad';
  static String routePath = '/homeLoad';

  @override
  State<HomeLoadWidget> createState() => _HomeLoadWidgetState();
}

class _HomeLoadWidgetState extends State<HomeLoadWidget> {
  late HomeLoadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeLoadModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
