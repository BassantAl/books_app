import 'package:bloc/bloc.dart';
import 'package:books_app/features/auth/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitial());
  final AuthRepo authRepo;
  Future<void> login({
    required String emailAddress,
    required String password,
  }) async {
    emit(LoginLoading());
    var result = await authRepo.logIn(
      emailAddress: emailAddress,
      password: password,
    );
    result.fold(
      (failure) {
        emit(LoginFailure(errorMessage: failure.toString()));
      },
      (credential) {
        emit(LoginSuccess());
      },
    );
  }
}
