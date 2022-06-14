// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationViewModel on _RegistrationViewmodelBase, Store {
  late final _$emailAtom =
      Atom(name: '_RegistrationViewmodelBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_RegistrationViewmodelBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$nameAtom =
      Atom(name: '_RegistrationViewmodelBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$passwordConfirmAtom = Atom(
      name: '_RegistrationViewmodelBase.passwordConfirm', context: context);

  @override
  String get passwordConfirm {
    _$passwordConfirmAtom.reportRead();
    return super.passwordConfirm;
  }

  @override
  set passwordConfirm(String value) {
    _$passwordConfirmAtom.reportWrite(value, super.passwordConfirm, () {
      super.passwordConfirm = value;
    });
  }

  late final _$_RegistrationViewmodelBaseActionController =
      ActionController(name: '_RegistrationViewmodelBase', context: context);

  @override
  void validateEqualPassword() {
    final _$actionInfo = _$_RegistrationViewmodelBaseActionController
        .startAction(name: '_RegistrationViewmodelBase.validateEqualPassword');
    try {
      return super.validateEqualPassword();
    } finally {
      _$_RegistrationViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmptyPassword(String passwordToValidate) {
    final _$actionInfo = _$_RegistrationViewmodelBaseActionController
        .startAction(name: '_RegistrationViewmodelBase.validateEmptyPassword');
    try {
      return super.validateEmptyPassword(passwordToValidate);
    } finally {
      _$_RegistrationViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateForm() {
    final _$actionInfo = _$_RegistrationViewmodelBaseActionController
        .startAction(name: '_RegistrationViewmodelBase.validateForm');
    try {
      return super.validateForm();
    } finally {
      _$_RegistrationViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
name: ${name},
passwordConfirm: ${passwordConfirm}
    ''';
  }
}

mixin _$RegistrationError on _RegistrationErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_RegistrationErrorBase.hasErrors'))
          .value;

  late final _$passwordAtom =
      Atom(name: '_RegistrationErrorBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordConfirmAtom =
      Atom(name: '_RegistrationErrorBase.passwordConfirm', context: context);

  @override
  String? get passwordConfirm {
    _$passwordConfirmAtom.reportRead();
    return super.passwordConfirm;
  }

  @override
  set passwordConfirm(String? value) {
    _$passwordConfirmAtom.reportWrite(value, super.passwordConfirm, () {
      super.passwordConfirm = value;
    });
  }

  @override
  String toString() {
    return '''
password: ${password},
passwordConfirm: ${passwordConfirm},
hasErrors: ${hasErrors}
    ''';
  }
}
