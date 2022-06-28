// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_register_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarRegisterViewModel on _CarRegisterViewModelBase, Store {
  late final _$boardAtom =
      Atom(name: '_CarRegisterViewModelBase.board', context: context);

  @override
  String get board {
    _$boardAtom.reportRead();
    return super.board;
  }

  @override
  set board(String value) {
    _$boardAtom.reportWrite(value, super.board, () {
      super.board = value;
    });
  }

  late final _$brandAtom =
      Atom(name: '_CarRegisterViewModelBase.brand', context: context);

  @override
  String get brand {
    _$brandAtom.reportRead();
    return super.brand;
  }

  @override
  set brand(String value) {
    _$brandAtom.reportWrite(value, super.brand, () {
      super.brand = value;
    });
  }

  late final _$modelAtom =
      Atom(name: '_CarRegisterViewModelBase.model', context: context);

  @override
  String get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(String value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$yearAtom =
      Atom(name: '_CarRegisterViewModelBase.year', context: context);

  @override
  String? get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(String? value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  late final _$_CarRegisterViewModelBaseActionController =
      ActionController(name: '_CarRegisterViewModelBase', context: context);

  @override
  String? validateEmptyBoard(String validateBoard) {
    final _$actionInfo = _$_CarRegisterViewModelBaseActionController
        .startAction(name: '_CarRegisterViewModelBase.validateEmptyBoard');
    try {
      return super.validateEmptyBoard(validateBoard);
    } finally {
      _$_CarRegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmptyBrand(String validateBrand) {
    final _$actionInfo = _$_CarRegisterViewModelBaseActionController
        .startAction(name: '_CarRegisterViewModelBase.validateEmptyBrand');
    try {
      return super.validateEmptyBrand(validateBrand);
    } finally {
      _$_CarRegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmptyModel(String validateModel) {
    final _$actionInfo = _$_CarRegisterViewModelBaseActionController
        .startAction(name: '_CarRegisterViewModelBase.validateEmptyModel');
    try {
      return super.validateEmptyModel(validateModel);
    } finally {
      _$_CarRegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateCarForm() {
    final _$actionInfo = _$_CarRegisterViewModelBaseActionController
        .startAction(name: '_CarRegisterViewModelBase.validateCarForm');
    try {
      return super.validateCarForm();
    } finally {
      _$_CarRegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
board: ${board},
brand: ${brand},
model: ${model},
year: ${year}
    ''';
  }
}

mixin _$CarRegisterError on _CarRegisterErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_CarRegisterErrorBase.hasErrors'))
          .value;

  late final _$boardAtom =
      Atom(name: '_CarRegisterErrorBase.board', context: context);

  @override
  String? get board {
    _$boardAtom.reportRead();
    return super.board;
  }

  @override
  set board(String? value) {
    _$boardAtom.reportWrite(value, super.board, () {
      super.board = value;
    });
  }

  late final _$brandAtom =
      Atom(name: '_CarRegisterErrorBase.brand', context: context);

  @override
  String? get brand {
    _$brandAtom.reportRead();
    return super.brand;
  }

  @override
  set brand(String? value) {
    _$brandAtom.reportWrite(value, super.brand, () {
      super.brand = value;
    });
  }

  late final _$modelAtom =
      Atom(name: '_CarRegisterErrorBase.model', context: context);

  @override
  String? get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(String? value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$yearAtom =
      Atom(name: '_CarRegisterErrorBase.year', context: context);

  @override
  String? get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(String? value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  @override
  String toString() {
    return '''
board: ${board},
brand: ${brand},
model: ${model},
year: ${year},
hasErrors: ${hasErrors}
    ''';
  }
}
