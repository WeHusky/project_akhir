import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project_akhir/models/user_model.dart';

class AuthService {
  final userBox = Hive.box<UserModel>('userBox');
  final sessionBox = Hive.box('sessionBox');
  final SupabaseClient _supabase = Supabase.instance.client;

  // 🔹 SIGN IN
  Future<AuthResponse> signInWithEmailPassword(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user != null) {
      // Jika user login berhasil, ambil data lokalnya (kalau ada)
      final existingUser = userBox.get(user.id);

      // Jika belum ada di Hive, tambahkan minimal datanya
      if (existingUser == null) {
        await userBox.put(
          user.id,
          UserModel(
            id: user.id,
            firstName: '',
            lastName: '',
            username: '',
            email: user.email ?? '',
          ),
        );
      }

      // Simpan user yang sedang aktif
      await sessionBox.put('currentUserId', user.id);
    }

    return response;
  }

  // 🔹 SIGN UP
  Future<AuthResponse> signUpWithEmailPassword(String email, String password) async {
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
    );
    return response;
  }

  // 🔹 SIMPAN DATA USER LOKAL
  Future<void> saveUserDataLocally({
    required String id,
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  }) async {
    final user = UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      username: username,
      email: email,
    );

    // Simpan user berdasarkan id unik (biar gak ketimpa)
    await userBox.put(id, user);

    // Simpan id user yang aktif
    await sessionBox.put('currentUserId', id);
  }

  // 🔹 GET USER YANG SEDANG AKTIF
  UserModel? getCurrentUser() {
    final currentUserId = sessionBox.get('currentUserId');
    if (currentUserId == null) return null;

    return userBox.get(currentUserId);
  }

  // 🔹 SIGN OUT
  Future<void> signOut() async {
    await _supabase.auth.signOut();
    await sessionBox.delete('currentUserId');
  }
}
