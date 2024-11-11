import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvU389JdAzr2gYwWNi9niO_UWtDUmKY0o",
            authDomain: "g4-eltransportador.firebaseapp.com",
            projectId: "g4-eltransportador",
            storageBucket: "g4-eltransportador.firebasestorage.app",
            messagingSenderId: "437832352814",
            appId: "1:437832352814:web:dfc5d4fe97f87902a04bbf",
            measurementId: "G-4QTLDBZT33"));
  } else {
    await Firebase.initializeApp();
  }
}
