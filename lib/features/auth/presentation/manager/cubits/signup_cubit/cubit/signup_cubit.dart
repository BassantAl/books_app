import 'package:bloc/bloc.dart';
import 'package:books_app/features/auth/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit({required this.authRepo}) : super(SignupInitial());

  final AuthRepo authRepo;
  Future<void> signUp({
    required String emailAddress,
    required String password,
  }) async {
    emit(SignupLoading());
    var result = await authRepo.signUp(
      emailAddress: emailAddress,
      password: password,
    );
    result.fold(
      (failure) {
        emit(SignupFailure(errorMessage: failure.errorMessage));
      },
      (credential) {
        emit(SignupSuccess());
      },
    );
  }
}
