// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_confirmation_token_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfirmationTokenViewModel on _ConfirmationTokenViewModelBase, Store {
  late final _$emailAtom =
      Atom(name: '_ConfirmationTokenViewModelBase.email', context: context);

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

  late final _$_ConfirmationTokenViewModelBaseActionController =
      ActionController(
          name: '_ConfirmationTokenViewModelBase', context: context);

  @override
  void validate() {
    final _$actionInfo = _$_ConfirmationTokenViewModelBaseActionController
        .startAction(name: '_ConfirmationTokenViewModelBase.validate');
    try {
      return super.validate();
    } finally {
      _$_ConfirmationTokenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email}
    ''';
  }
}

mixin _$GetConfirmationTokenError on _GetConfirmationTokenError, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_GetConfirmationTokenError.hasErrors'))
          .value;

  late final _$emailAtom =
      Atom(name: '_GetConfirmationTokenError.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
hasErrors: ${hasErrors}
    ''';
  }
}
