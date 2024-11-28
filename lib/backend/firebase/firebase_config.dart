import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDEWXVVwTGaSi7LjDyLxNm1UWAEkHqojfw",
            authDomain: "g4-produccion.firebaseapp.com",
            projectId: "g4-produccion",
            storageBucket: "g4-produccion.firebasestorage.app",
            messagingSenderId: "685768337040",
            appId: "1:685768337040:web:ac1c2bf22521cdac341a15",
            measurementId: "G-1ZYH2XH0RN"));
  } else {
    await Firebase.initializeApp();
  }
}
