import 'dart:io';
import 'package:dcli/dcli.dart';

import 'fpegawaimahasiswa.dart';
import 'fdosenstaff.dart';

void main(List<String> arguments) {
  Mahasiswa sastra = Mahasiswa(
    "Sastra",
    20,
    "Pria",
    "C1419xxxx",
    "Aktif",
    0,
    0.0,
    0.0,
  );

  int tunjanganhari = 10000; //tunjanganhari kehadiran perhari
  int tunjanganbulan = 200000; //tunjangan perhari x 20 hari kerja
  int gajidasar;
  DosenLB verrel = DosenLB("Verrel", 30, "Pria", "C1419xxxx", 5);
  DosenTamu sumano = DosenTamu("Sumano", 25, "Pria", "C1419xxxx", 10);
  DosenTetap wong = DosenTetap("Wong", 28, "Pria", "C1419xxxx", 15);
  Staff bryan = Staff("Bryan", 40, "Pria", "C1419xxxx");
  int choice;
  int chc;
  stdout.write("Input Gaji Dasar : \n");
  String? dtInput = stdin.readLineSync();
  gajidasar = int.parse(dtInput!);
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

    if (choice == 1) {
      do {
        stdout.write("1. Ambil SKS\n");
        stdout.write("2. Ubah Status\n");
        stdout.write("3. Tampilkan Jumlah SKS yang Diambil\n");
        stdout.write("4. Input IPS\n");
        stdout.write("5. Tampilkan IPK\n");
        stdout.write("0. Exit\n");
        stdout.write("Choice : ");
        String? dtInput = stdin.readLineSync();
        chc = int.parse(dtInput!);

        if (chc == 1) {
          int sks;
          stdout.write("Masukkan Jumlah SKS : ");
          String? dtInput = stdin.readLineSync();
          sks = int.parse(dtInput!);
          sastra.sks += sks;
        } else if (chc == 2) {
          sastra.changestatus();
          print("Status berhasil diganti menjadi ${sastra.status}");
        } else if (chc == 3) {
          print("Sks yang diambil : ${sastra.sks}");
        } else if (chc == 4) {
          double ips;
          stdout.write("Input IPS : ");
          String? dtInput = stdin.readLineSync();
          ips = double.parse(dtInput!);
          sastra.calculateipk(sastra.ips, ips);
          sastra.ips = ips;
        } else if (chc == 5) {
          print("IPK yang diperoleh : ${sastra.ipk}");
        }
      } while (chc != 0);
    } else if (choice == 2) {
      stdout.write("1. Lihat Jumlah SKS\n");
      stdout.write("2. Lihat Penghasilan\n");
      stdout.write("0. Exit\n");
      stdout.write("Choice : ");
      String? dtInput = stdin.readLineSync();
      chc = int.parse(dtInput!);
      if (chc == 1) {
        print("SKS : ${verrel.sks}");
      } else if (chc == 2) {
        int total = 0;
        total += verrel.gajisks(verrel.sks);
        print("Total Gaji : $total");
      }
    } else if (choice == 3) {
      stdout.write("1. Lihat Jumlah SKS\n");
      stdout.write("2. Lihat Penghasilan\n");
      stdout.write("0. Exit\n");
      stdout.write("Choice : ");
      String? dtInput = stdin.readLineSync();
      chc = int.parse(dtInput!);
      if (chc == 1) {
        print("SKS : ${sumano.sks}");
      } else if (chc == 2) {
        int total = 0;
        total += sumano.gajisks(sumano.sks);
        total += sumano.tunjkehadiran(tunjanganbulan);
        print("Total Gaji : $total");
      }
    } else if (choice == 4) {
      stdout.write("1. Lihat Jumlah SKS\n");
      stdout.write("2. Lihat Penghasilan\n");
      stdout.write("0. Exit\n");
      stdout.write("Choice : ");
      String? dtInput = stdin.readLineSync();
      chc = int.parse(dtInput!);
      if (chc == 1) {
        print("SKS : ${wong.sks}");
      } else if (chc == 2) {
        int total = 0;
        total += wong.gajidasar(gajidasar);
        total += wong.gajisks(wong.sks);
        total += wong.tunjkehadiran(tunjanganbulan);
        print("Total Gaji : $total");
      }
    } else if (choice == 5) {
      stdout.write("1. Ambil Cuti 1 Hari\n");
      stdout.write("2. Absensi\n");
      stdout.write("3. Tampilkan Total Gaji\n");
      stdout.write("0. Exit\n");
      stdout.write("Choice : ");
      String? dtInput = stdin.readLineSync();
      chc = int.parse(dtInput!);
      if (chc == 1) {
        if (bryan.cuti == 0) {
          print("Cuti gagal diambil karena jatah cuti sudah habis");
        } else {
          bryan.cuti -= 1;
          print("Cuti berhasil diambil. Sisa cuti : ${bryan.cuti} hari");
        }
      } else if (chc == 2) {
        bryan.absen();
      } else if (chc == 3) {
        int cuti = 12 - bryan.cuti;
        int tunjstaff = tunjanganhari * (20 - cuti);
        int total = 0;
        total += bryan.gajidasar(gajidasar);
        total += bryan.tunjkehadiran(tunjstaff);
      }
    }
  } while (choice != 0);
}
