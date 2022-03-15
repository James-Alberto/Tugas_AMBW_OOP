import 'fmixin.dart';
import 'fpegawaimahasiswa.dart';

class DosenLB extends Pegawai with GajiSKS {
  int _sks = 0;
  DosenLB(String _nama, int _umur, String _gender, String _nip, int sks)
      : super(_nama, _umur, _gender, _nip) {
    _sks = sks;
  }
  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}

class DosenTamu extends Pegawai with TunjKehadiran, GajiSKS {
  int _sks = 0;
  DosenTamu(String _nama, int _umur, String _gender, String _nip, int sks)
      : super(_nama, _umur, _gender, _nip) {
    _sks = sks;
  }
  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}

class DosenTetap extends Pegawai with GajiDasar, GajiSKS, TunjKehadiran {
  int _sks = 0;
  DosenTetap(String _nama, int _umur, String _gender, String _nip, int sks)
      : super(_nama, _umur, _gender, _nip) {
    _sks = sks;
  }

  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}

class Staff extends Pegawai with GajiDasar, TunjKehadiran {
  int _cuti = 12;
  Staff(String _nama, int _umur, String _gender, String _nip)
      : super(_nama, _umur, _gender, _nip) {
  }
  int get cuti => this._cuti;
  set cuti(int value) => this._cuti = value;

  void absen() {
    print("Absen Berhasil");
  }
}
