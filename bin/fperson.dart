import 'dart:io';

class Person {
  String _nama;
  int _umur;
  String _gender;

  Person(this._nama, this._umur, this._gender);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set usia(int dtUmur) {
    _umur = dtUmur;
  }

  set gender(String dtGender) {
    _gender = dtGender;
  }

  void printPerson() {
    print("Nama : $_nama, Umur : $_umur, Gender : $_gender");
  }
}
