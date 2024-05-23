import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/core/auth/cubit.dart';
import 'package:furniture_shopping_app/feature/views/home/order_details.dart';
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
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
          theme: themeData,
          debugShowCheckedModeBanner: false,
          home:  OrderDetailsView()
          //  FirebaseAuth.instance.currentUser == null
          //     ? const GetStartedView()
          //     : const BottomNavBarView()
          ),
    );
  }
}
