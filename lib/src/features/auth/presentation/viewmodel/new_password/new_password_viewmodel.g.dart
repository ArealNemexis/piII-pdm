// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewPasswordViewModel on _NewPasswordViewModelBase, Store {
  final _$passwordAtom = Atom(name: '_NewPasswordViewModelBase.password');

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

  final _$sucessAtom = Atom(name: '_NewPasswordViewModelBase.sucess');

  @override
  bool get sucess {
    _$sucessAtom.reportRead();
    return super.sucess;
  }

  @override
  set sucess(bool value) {
    _$sucessAtom.reportWrite(value, super.sucess, () {
      super.sucess = value;
    });
  }

  final _$passwordConfirmAtom =
      Atom(name: '_NewPasswordViewModelBase.passwordConfirm');

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

  final _$_NewPasswordViewModelBaseActionController =
      ActionController(name: '_NewPasswordViewModelBase');

  @override
  void validateEqualPassword() {
    final _$actionInfo = _$_NewPasswordViewModelBaseActionController
        .startAction(name: '_NewPasswordViewModelBase.validateEqualPassword');
    try {
      return super.validateEqualPassword();
    } finally {
      _$_NewPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmptyPassword(String passwordToValidate) {
    final _$actionInfo = _$_NewPasswordViewModelBaseActionController
        .startAction(name: '_NewPasswordViewModelBase.validateEmptyPassword');
    try {
      return super.validateEmptyPassword(passwordToValidate);
    } finally {
      _$_NewPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateForm() {
    final _$actionInfo = _$_NewPasswordViewModelBaseActionController
        .startAction(name: '_NewPasswordViewModelBase.validateForm');
    try {
      return super.validateForm();
    } finally {
      _$_NewPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
password: ${password},
sucess: ${sucess},
passwordConfirm: ${passwordConfirm}
    ''';
  }
}

mixin _$NewPasswordError on _NewPasswordErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_NewPasswordErrorBase.hasErrors'))
          .value;

  final _$passwordAtom = Atom(name: '_NewPasswordErrorBase.password');

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

  final _$passwordConfirmAtom =
      Atom(name: '_NewPasswordErrorBase.passwordConfirm');

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
