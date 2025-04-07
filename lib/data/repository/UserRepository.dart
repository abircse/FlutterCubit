
import '../../core/ApiClient.dart';
import '../../core/ApiEndpoints.dart';
import '../model/UserModel.dart';

class UserRepository {
  final ApiClient apiClient;

  UserRepository(this.apiClient);

  Future<List<User>> fetchUsers() async {
    final response = await apiClient.get(ApiEndpoints.users);
    final data = response.data['data'] as List;
    return data.map((json) => User.fromJson(json)).toList();
  }
}
