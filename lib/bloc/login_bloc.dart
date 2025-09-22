import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/repository/auth/login_repository.dart';
import 'package:movie_app/utils/enums.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();

  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>(onEmailChanged);
    on<PasswordChanged>(onPasswordChanged);
    on<LoginApi>(loginApi);
  }

  void onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void loginApi(LoginApi event, Emitter<LoginState> emit) async {
    Map data = {'email': state.email, 'password': state.password};

    emit(state.copyWith(postApiStatus: PostApiStatus.loading));
    await loginRepository
        .loginApi(data)
        .then((onValue) {
          if (onValue.error.isNotEmpty) {
            emit(
              state.copyWith(
                error: onValue.toString(),
                postApiStatus: PostApiStatus.failure,
              ),
            );
          } else {
            emit(
              state.copyWith(
                error: "Login Successful",
                postApiStatus: PostApiStatus.success,
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              error: error.toString(),
              postApiStatus: PostApiStatus.failure,
            ),
          );
        });
  }
}
