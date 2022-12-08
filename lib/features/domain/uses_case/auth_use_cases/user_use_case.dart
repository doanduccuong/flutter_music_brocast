import 'package:flutter_base_project/features/domain/repositories/use_repository.dart';

class UserUseCase {
  final UserRepository userRepository;

  UserUseCase({required this.userRepository});

  Future<void> fetchUserProfile() async {
    await userRepository.fetchProfile();
  }
}
