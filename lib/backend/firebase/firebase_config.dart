import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-eqMw5IMHKbtwtBsjE0Qq6yTpg0vtNto",
            authDomain: "sobra-ofert-proyecto.firebaseapp.com",
            projectId: "sobra-ofert-proyecto",
            storageBucket: "sobra-ofert-proyecto.firebasestorage.app",
            messagingSenderId: "482015776791",
            appId: "1:482015776791:web:3a2cfb34454a9e61a30c52",
            measurementId: "G-P7JJS8FQ4H"));
  } else {
    await Firebase.initializeApp();
  }
}
