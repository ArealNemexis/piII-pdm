class RegistrationDTO {
  final String email;
  final String password;
  final String name;
  final String passwordConfirm;

  const RegistrationDTO(
      this.email, this.password, this.name, this.passwordConfirm);
}
