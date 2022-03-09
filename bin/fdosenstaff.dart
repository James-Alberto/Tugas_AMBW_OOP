import 'fmixin.dart';
import 'fpegawaimahasiswa.dart';

class DosenLB extends Pegawai with GajiSKS {}

class DosenTamu extends Pegawai with TunjKehadiran, GajiSKS {}

class DosenTetap extends Pegawai with GajiDasar, GajiSKS, TunjKehadiran {}

class Staff extends Pegawai with GajiDasar, TunjKehadiran {}
