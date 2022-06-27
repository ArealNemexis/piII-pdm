class CarResponseDto{
  CarResponseDto({
    required this.brand,
    required this.model,
    required this.board,
    required this.year,
  });

  final String brand;
  final String model;
  final String board;
  final int year;


  factory CarResponseDto.fromJson(Map<String, dynamic> json)=>CarResponseDto(
    brand: json["brand"],
    model: json["model"],
    board: json["board"],
    year: json["year"],
  );

  Map<String, dynamic> toJason()=>{
    "brand": brand,
    "model": model,
    "board": board,
    "year": year,
  };

}