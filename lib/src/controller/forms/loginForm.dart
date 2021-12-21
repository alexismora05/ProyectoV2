import 'package:reactive_forms/reactive_forms.dart';

class _LoginController {
  final FormGroup loginForm= FormGroup({
    'email':FormControl<String>(
        validators: [
          Validators.required,
          Validators.email
        ],
        value: ''
    ),
    'password':FormControl<String>(
        validators: [
          Validators.required,
        ],
        value: ''
    ),
  });

  void cleanData() {
    this.loginForm.control('email').reset();
    this.loginForm.control('password').reset();
  }

  String get getEmail => this.loginForm.control('email').value;
  set errorEmail(String value) => this.loginForm.control('email').setErrors({value:'email'});

  String get getPassword => this.loginForm.control('password').value;
  set errorPassword(String value) => this.loginForm.control('password').setErrors({value:'password'});

}

final loginController = _LoginController();