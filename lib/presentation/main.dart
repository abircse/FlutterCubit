import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:usermanagement/presentation/screens/UserScreen.dart';

import '../core/ApiClient.dart';
import '../data/repository/UserRepository.dart';
import '../logic/cubit/UserCubit.dart';

void main() {
  final dio = Dio();
  final apiClient = ApiClient(dio);
  final userRepository = UserRepository(apiClient);

  runApp(MyApp(userRepository: userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit API Demo',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => UserCubit(userRepository),
        child: const UserScreen(),
      ),
    );
  }
}
