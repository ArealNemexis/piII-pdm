import 'dart:ffi';

class CarDto {
  final String brand;
  final String model;
  final String board;
  final String year;

  const CarDto(this.board, this.brand, this.model, this.year);
}
