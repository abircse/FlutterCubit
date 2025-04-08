import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usermanagement/presentation/screens/AddUserScreen.dart';

import '../../data/model/UserModel.dart';
import '../../logic/cubit/UserCubit.dart';
import '../../logic/state/UserState.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Management App')),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserLoaded) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                User user = state.users[index];
                return ListTile(
                  leading:
                      CircleAvatar(backgroundImage: NetworkImage(user.avatar)),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email),
                );
              },
            );
          } else if (state is UserError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const Center(child: Text('Press button to load users.'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddUserScreen()),
          )
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
