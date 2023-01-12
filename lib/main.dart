import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/platform/network/app_auth.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'app.dart';
import 'configs/app_configs.dart';
import 'configs/app_envi_config.dart';
import 'firebase_options.dart';
import 'injection.dart';

void main() async {
  AppConfigs.env = Environment.dev;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());
  // var client = await createClient();
  // print(await client.read(Uri.http('example.com', 'protected-resources.txt')));
   configureDependencies();
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}
