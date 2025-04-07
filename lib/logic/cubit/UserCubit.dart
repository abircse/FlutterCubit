import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/UserRepository.dart';
import '../state/UserState.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository repository;

  UserCubit(this.repository) : super(UserInitial());

  void getUsers() async {
    try {
      emit(UserLoading());
      final users = await repository.fetchUsers();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
