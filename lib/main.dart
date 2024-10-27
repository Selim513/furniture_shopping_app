import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:furniture_shopping_app/feature/onboarding/presentation/views/boarding.dart';
import 'package:furniture_shopping_app/feature/views/home/bottomNavBar.dart';
import 'package:furniture_shopping_app/firebase_options.dart';
import 'package:furniture_shopping_app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
      ],
      child: MaterialApp(
          theme: themeData,
          debugShowCheckedModeBanner: false,
          home: FirebaseAuth.instance.currentUser == null
              ? const GetStartedView()
              : const BottomNavBarView()),
    );
  }
}
