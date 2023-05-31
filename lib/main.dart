import 'package:flugo_mobile/app.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    const App(),
  );
}
