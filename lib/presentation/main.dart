import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usermanagement/presentation/screens/AddUserScreen.dart';
import '../core/di/Setup.dart';
import '../logic/cubit/UserCubit.dart';

void main() {
  initializeDependenciesInjection();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CUBIT - API Implementation',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => getIt<UserCubit>(),
        child: const AddUserScreen(),
      ),
    );
  }
}
