import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tms_todo/app/navigation/app_router.dart';
import 'package:tms_todo/app/todo_app.dart';
import 'package:tms_todo/domain/auth_service.dart';
import 'package:tms_todo/firebase_options.dart';

final _authService = AuthServiceImpl(firebaseAuth: FirebaseAuth.instance);
final _router = createRouter(authService: _authService);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'assets/.env');

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(TodoApp(router: _router, authService: _authService));
}
