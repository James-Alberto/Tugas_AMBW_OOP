import 'fperson.dart';

class Pegawai extends Person {
  String _nip = "";
  Pegawai(String _nama, int _umur, String _gender, String nip)
      : super(_nama, _umur, _gender) {
    _nip = nip;
  }

  String get nip => _nip;

  set nip(String value) {
    _nip = value;
  }
}

class Mahasiswa extends Person {
  String _nrp = "";
  String _status = "";
  int _sks = 0;
  double _ips = 0.0;
  double _ipk = 0.0;

  Mahasiswa(String _nama, int _umur, String _gender, String nrp, String status,
      int sks, double ips, double ipk)
      : super(_nama, _umur, _gender) {
    _status = status;
    _sks = sks;
    _ips = ips;
    _ips = ipk;
  }

  int get sks => _sks;
  String get nrp => _nrp;
  String get status => _status;
  double get ips => _ips;
  double get ipk => _ipk;

  set sks(int dtSks) {
    _sks = dtSks;
  }

  set nrp(String dtNrp) {
    _nrp = dtNrp;
  }

  set status(String dtStatus) {
    _status = dtStatus;
  }

  set ips(double dtIps) {
    _ips = dtIps;
  }

  set ipk(double dtIpk) {
    _ipk = dtIpk;
  }

  void changestatus() {
    if (_status == "Aktif") {
      _status = "Cuti";
    } else if (_status == "Cuti") {
      _status = "Aktif";
    }
  }

  void calculateipk(double lastips, double currentips) {
    if (lastips == 0.0) {
      ipk = currentips;
    } else {
      ipk = (lastips + currentips) / 2;
    }
  }
}
