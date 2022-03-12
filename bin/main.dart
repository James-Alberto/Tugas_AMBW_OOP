import 'dart:io';

void main(List<String> arguments) {
  int choice;
  do {
    stdout.write("1. Mahasiswa\n");
    stdout.write("2. Dosen LB\n");
    stdout.write("3. Dosen Tamu\n");
    stdout.write("4. Dosen Tetap\n");
    stdout.write("5. Staff\n");
    stdout.write("0. Exit\n");
    stdout.write("Choice : ");
    String? dtInput = stdin.readLineSync();
    choice = int.parse(dtInput!);

    switch (choice) {
      case 1:
        print("Ganjil -- SWITCH");
        break;
      case 0:
        print("Genap -- SWITCH");
        break;
    }
  } while (choice != 0);
}
