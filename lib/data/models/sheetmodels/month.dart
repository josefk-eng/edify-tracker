// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:edify_progress_tracker/data/models/sheetmodels/visitType.dart';

class Periodic {
  int nsMonthly;
  int nsQuarterly;
  int nspQuarterly;

  int cohort;
  int csMonthly;
  int csQuarterly;
  int cspQuarterly;

  String tName;
  String tType;
  int nsTrainedMonthly;
  int nsTrainedQuarterly;
  int nspToTrainMonthly;

  int nsoTrainedMonthly;
  int nsoTrainedQuarterly;
  int nsopToTrainMonthly;

  int nshTrainedMonthly;
  int nshTrainedQuarterly;
  int nshpToTrainMonthly;

  int tss;
  int tt;
  int tp;

  int lt;
  int lp;

  double ca;
  double cp;

  VisitType va;
  VisitType vp;

  int epfs;
  int apfs;
  int ppfs;

  int ainteng;
  int pinteng;

  int aloan;
  int ploan;
  double loanAmount;

  int ateachingDev;
  int pteachingdev;

  int aedt;
  int pedt;

  int assa;
  int pssa;

  int aasa;
  int pasa;

  int amsc;
  int pmsc;

  int acoremetrics;
  int pcoremetrics;

  int aclientmetrics;
  int pclientmetrics;

  int eDCs;
  int aDCs;
  int pDCs;

  int aNE;
  int pNE;

  int sWithAlm;
  int studentsInAlm;


  int month;
  int quarter;
  int fy;
  Periodic({
    this.nsMonthly = 0,
    this.nsQuarterly = 0,
    this.nspQuarterly = 0,
    this.cohort = 0,
    this.csMonthly = 0,
    this.csQuarterly = 0,
    this.cspQuarterly = 0,
    this.tName = "",
    this.tType  = "",
    this.nsTrainedMonthly = 0,
    this.nsTrainedQuarterly = 0,
    this.nspToTrainMonthly = 0,
    this.nsoTrainedMonthly = 0,
    this.nsoTrainedQuarterly = 0,
    this.nsopToTrainMonthly = 0,
    this.nshTrainedMonthly = 0,
    this.nshTrainedQuarterly = 0,
    this.nshpToTrainMonthly = 0,
    this.tss = 0,
    this.tt = 0,
    this.tp = 0,
    this.lt = 0,
    this.lp = 0,
    this.ca = 0,
    this.cp = 0,
    this.va = const VisitType(client: 0, core: 0),
    this.vp = const VisitType(client: 0, core: 0),
    this.epfs = 0,
    this.apfs = 0,
    this.ppfs = 0,
    this.ainteng = 0,
    this.pinteng = 0,
    this.aloan = 0,
    this.ploan = 0,
    this.loanAmount = 0.0,
    this.ateachingDev = 0,
    this.pteachingdev = 0,
    this.aedt = 0,
    this.pedt = 0,
    this.assa = 0,
    this.pssa = 0,
    this.aasa = 0,
    this.pasa = 0,
    this.amsc = 0,
    this.pmsc = 0,
    this.acoremetrics = 0,
    this.pcoremetrics = 0,
    this.aclientmetrics = 0,
    this.pclientmetrics = 0,
    this.eDCs = 0,
    this.aDCs = 0,
    this.pDCs = 0,
    this.aNE = 0,
    this.pNE = 0,
    this.sWithAlm = 0,
    this.studentsInAlm = 0,
    this.month = 0,
    this.quarter = 0,
    this.fy = 24,
  });




  Periodic copyWith({
    int? nsMonthly,
    int? nsQuarterly,
    int? nspQuarterly,
    int? cohort,
    int? csMonthly,
    int? csQuarterly,
    int? cspQuarterly,
    String? tName,
    String? tType,
    int? nsTrainedMonthly,
    int? nsTrainedQuarterly,
    int? nspToTrainMonthly,
    int? nsoTrainedMonthly,
    int? nsoTrainedQuarterly,
    int? nsopToTrainMonthly,
    int? nshTrainedMonthly,
    int? nshTrainedQuarterly,
    int? nshpToTrainMonthly,
    int? tss,
    int? tt,
    int? tp,
    int? lt,
    int? lp,
    double? ca,
    double? cp,
    VisitType? va,
    VisitType? vp,
    int? epfs,
    int? apfs,
    int? ppfs,
    int? ainteng,
    int? pinteng,
    int? aloan,
    int? ploan,
    double? loanAmount,
    int? ateachingDev,
    int? pteachingdev,
    int? aedt,
    int? pedt,
    int? assa,
    int? pssa,
    int? aasa,
    int? pasa,
    int? amsc,
    int? pmsc,
    int? acoremetrics,
    int? pcoremetrics,
    int? aclientmetrics,
    int? pclientmetrics,
    int? eDCs,
    int? aDCs,
    int? pDCs,
    int? aNE,
    int? pNE,
    int? sWithAlm,
    int? studentsInAlm,
    int? month,
    int? quarter,
    int? fy,
  }) {
    return Periodic(
      nsMonthly: nsMonthly ?? this.nsMonthly,
      nsQuarterly: nsQuarterly ?? this.nsQuarterly,
      nspQuarterly: nspQuarterly ?? this.nspQuarterly,
      cohort: cohort ?? this.cohort,
      csMonthly: csMonthly ?? this.csMonthly,
      csQuarterly: csQuarterly ?? this.csQuarterly,
      cspQuarterly: cspQuarterly ?? this.cspQuarterly,
      tName: tName ?? this.tName,
      tType: tType ?? this.tType,
      nsTrainedMonthly: nsTrainedMonthly ?? this.nsTrainedMonthly,
      nsTrainedQuarterly: nsTrainedQuarterly ?? this.nsTrainedQuarterly,
      nspToTrainMonthly: nspToTrainMonthly ?? this.nspToTrainMonthly,
      nsoTrainedMonthly: nsoTrainedMonthly ?? this.nsoTrainedMonthly,
      nsoTrainedQuarterly: nsoTrainedQuarterly ?? this.nsoTrainedQuarterly,
      nsopToTrainMonthly: nsopToTrainMonthly ?? this.nsopToTrainMonthly,
      nshTrainedMonthly: nshTrainedMonthly ?? this.nshTrainedMonthly,
      nshTrainedQuarterly: nshTrainedQuarterly ?? this.nshTrainedQuarterly,
      nshpToTrainMonthly: nshpToTrainMonthly ?? this.nshpToTrainMonthly,
      tss: tss ?? this.tss,
      tt: tt ?? this.tt,
      tp: tp ?? this.tp,
      lt: lt ?? this.lt,
      lp: lp ?? this.lp,
      ca: ca ?? this.ca,
      cp: cp ?? this.cp,
      va: va ?? this.va,
      vp: vp ?? this.vp,
      epfs: epfs ?? this.epfs,
      apfs: apfs ?? this.apfs,
      ppfs: ppfs ?? this.ppfs,
      ainteng: ainteng ?? this.ainteng,
      pinteng: pinteng ?? this.pinteng,
      aloan: aloan ?? this.aloan,
      ploan: ploan ?? this.ploan,
      loanAmount: loanAmount ?? this.loanAmount,
      ateachingDev: ateachingDev ?? this.ateachingDev,
      pteachingdev: pteachingdev ?? this.pteachingdev,
      aedt: aedt ?? this.aedt,
      pedt: pedt ?? this.pedt,
      assa: assa ?? this.assa,
      pssa: pssa ?? this.pssa,
      aasa: aasa ?? this.aasa,
      pasa: pasa ?? this.pasa,
      amsc: amsc ?? this.amsc,
      pmsc: pmsc ?? this.pmsc,
      acoremetrics: acoremetrics ?? this.acoremetrics,
      pcoremetrics: pcoremetrics ?? this.pcoremetrics,
      aclientmetrics: aclientmetrics ?? this.aclientmetrics,
      pclientmetrics: pclientmetrics ?? this.pclientmetrics,
      eDCs: eDCs ?? this.eDCs,
      aDCs: aDCs ?? this.aDCs,
      pDCs: pDCs ?? this.pDCs,
      aNE: aNE ?? this.aNE,
      pNE: pNE ?? this.pNE,
      sWithAlm: sWithAlm ?? this.sWithAlm,
      studentsInAlm: studentsInAlm ?? this.studentsInAlm,
      month: month ?? this.month,
      quarter: quarter ?? this.quarter,
      fy: fy ?? this.fy,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsMonthly': nsMonthly,
      'nsQuarterly': nsQuarterly,
      'nspQuarterly': nspQuarterly,
      'cohort': cohort,
      'csMonthly': csMonthly,
      'csQuarterly': csQuarterly,
      'cspQuarterly': cspQuarterly,
      'tName': tName,
      'tType': tType,
      'nsTrainedMonthly': nsTrainedMonthly,
      'nsTrainedQuarterly': nsTrainedQuarterly,
      'nspToTrainMonthly': nspToTrainMonthly,
      'nsoTrainedMonthly': nsoTrainedMonthly,
      'nsoTrainedQuarterly': nsoTrainedQuarterly,
      'nsopToTrainMonthly': nsopToTrainMonthly,
      'nshTrainedMonthly': nshTrainedMonthly,
      'nshTrainedQuarterly': nshTrainedQuarterly,
      'nshpToTrainMonthly': nshpToTrainMonthly,
      'tss': tss,
      'tt': tt,
      'tp': tp,
      'lt': lt,
      'lp': lp,
      'ca': ca,
      'cp': cp,
      'va': va.toMap(),
      'vp': vp.toMap(),
      'epfs': epfs,
      'apfs': apfs,
      'ppfs': ppfs,
      'ainteng': ainteng,
      'pinteng': pinteng,
      'aloan': aloan,
      'ploan': ploan,
      'loanAmount': loanAmount,
      'ateachingDev': ateachingDev,
      'pteachingdev': pteachingdev,
      'aedt': aedt,
      'pedt': pedt,
      'assa': assa,
      'pssa': pssa,
      'aasa': aasa,
      'pasa': pasa,
      'amsc': amsc,
      'pmsc': pmsc,
      'acoremetrics': acoremetrics,
      'pcoremetrics': pcoremetrics,
      'aclientmetrics': aclientmetrics,
      'pclientmetrics': pclientmetrics,
      'eDCs': eDCs,
      'aDCs': aDCs,
      'pDCs': pDCs,
      'aNE': aNE,
      'pNE': pNE,
      'sWithAlm': sWithAlm,
      'studentsInAlm': studentsInAlm,
      'month': month,
      'quarter': quarter,
      'fy': fy,
    };
  }

  factory Periodic.fromMap(Map<String, dynamic> map) {
    return Periodic(
      nsMonthly: map['nsMonthly'] as int,
      nsQuarterly: map['nsQuarterly'] as int,
      nspQuarterly: map['nspQuarterly'] as int,
      cohort: map['cohort'] as int,
      csMonthly: map['csMonthly'] as int,
      csQuarterly: map['csQuarterly'] as int,
      cspQuarterly: map['cspQuarterly'] as int,
      tName: map['tName'] as String,
      tType: map['tType'] as String,
      nsTrainedMonthly: map['nsTrainedMonthly'] as int,
      nsTrainedQuarterly: map['nsTrainedQuarterly'] as int,
      nspToTrainMonthly: map['nspToTrainMonthly'] as int,
      nsoTrainedMonthly: map['nsoTrainedMonthly'] as int,
      nsoTrainedQuarterly: map['nsoTrainedQuarterly'] as int,
      nsopToTrainMonthly: map['nsopToTrainMonthly'] as int,
      nshTrainedMonthly: map['nshTrainedMonthly'] as int,
      nshTrainedQuarterly: map['nshTrainedQuarterly'] as int,
      nshpToTrainMonthly: map['nshpToTrainMonthly'] as int,
      tss: map['tss'] as int,
      tt: map['tt'] as int,
      tp: map['tp'] as int,
      lt: map['lt'] as int,
      lp: map['lp'] as int,
      ca: map['ca'] as double,
      cp: map['cp'] as double,
      va: VisitType.fromMap(map['va'] as Map<String,dynamic>),
      vp: VisitType.fromMap(map['vp'] as Map<String,dynamic>),
      epfs: map['epfs'] as int,
      apfs: map['apfs'] as int,
      ppfs: map['ppfs'] as int,
      ainteng: map['ainteng'] as int,
      pinteng: map['pinteng'] as int,
      aloan: map['aloan'] as int,
      ploan: map['ploan'] as int,
      loanAmount: map['loanAmount'] as double,
      ateachingDev: map['ateachingDev'] as int,
      pteachingdev: map['pteachingdev'] as int,
      aedt: map['aedt'] as int,
      pedt: map['pedt'] as int,
      assa: map['assa'] as int,
      pssa: map['pssa'] as int,
      aasa: map['aasa'] as int,
      pasa: map['pasa'] as int,
      amsc: map['amsc'] as int,
      pmsc: map['pmsc'] as int,
      acoremetrics: map['acoremetrics'] as int,
      pcoremetrics: map['pcoremetrics'] as int,
      aclientmetrics: map['aclientmetrics'] as int,
      pclientmetrics: map['pclientmetrics'] as int,
      eDCs: map['eDCs'] as int,
      aDCs: map['aDCs'] as int,
      pDCs: map['pDCs'] as int,
      aNE: map['aNE'] as int,
      pNE: map['pNE'] as int,
      sWithAlm: map['sWithAlm'] as int,
      studentsInAlm: map['studentsInAlm'] as int,
      month: map['month'] as int,
      quarter: map['quarter'] as int,
      fy: map['fy'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Periodic.fromJson(String source) => Periodic.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Periodic(nsMonthly: $nsMonthly, nsQuarterly: $nsQuarterly, nspQuarterly: $nspQuarterly, cohort: $cohort, csMonthly: $csMonthly, csQuarterly: $csQuarterly, cspQuarterly: $cspQuarterly, tName: $tName, tType: $tType, nsTrainedMonthly: $nsTrainedMonthly, nsTrainedQuarterly: $nsTrainedQuarterly, nspToTrainMonthly: $nspToTrainMonthly, nsoTrainedMonthly: $nsoTrainedMonthly, nsoTrainedQuarterly: $nsoTrainedQuarterly, nsopToTrainMonthly: $nsopToTrainMonthly, nshTrainedMonthly: $nshTrainedMonthly, nshTrainedQuarterly: $nshTrainedQuarterly, nshpToTrainMonthly: $nshpToTrainMonthly, tss: $tss, tt: $tt, tp: $tp, lt: $lt, lp: $lp, ca: $ca, cp: $cp, va: $va, vp: $vp, epfs: $epfs, apfs: $apfs, ppfs: $ppfs, ainteng: $ainteng, pinteng: $pinteng, aloan: $aloan, ploan: $ploan, loanAmount: $loanAmount, ateachingDev: $ateachingDev, pteachingdev: $pteachingdev, aedt: $aedt, pedt: $pedt, assa: $assa, pssa: $pssa, aasa: $aasa, pasa: $pasa, amsc: $amsc, pmsc: $pmsc, acoremetrics: $acoremetrics, pcoremetrics: $pcoremetrics, aclientmetrics: $aclientmetrics, pclientmetrics: $pclientmetrics, eDCs: $eDCs, aDCs: $aDCs, pDCs: $pDCs, aNE: $aNE, pNE: $pNE, sWithAlm: $sWithAlm, studentsInAlm: $studentsInAlm, month: $month, quarter: $quarter, fy: $fy)';
  }

  @override
  bool operator ==(covariant Periodic other) {
    if (identical(this, other)) return true;
  
    return 
      other.nsMonthly == nsMonthly &&
      other.nsQuarterly == nsQuarterly &&
      other.nspQuarterly == nspQuarterly &&
      other.cohort == cohort &&
      other.csMonthly == csMonthly &&
      other.csQuarterly == csQuarterly &&
      other.cspQuarterly == cspQuarterly &&
      other.tName == tName &&
      other.tType == tType &&
      other.nsTrainedMonthly == nsTrainedMonthly &&
      other.nsTrainedQuarterly == nsTrainedQuarterly &&
      other.nspToTrainMonthly == nspToTrainMonthly &&
      other.nsoTrainedMonthly == nsoTrainedMonthly &&
      other.nsoTrainedQuarterly == nsoTrainedQuarterly &&
      other.nsopToTrainMonthly == nsopToTrainMonthly &&
      other.nshTrainedMonthly == nshTrainedMonthly &&
      other.nshTrainedQuarterly == nshTrainedQuarterly &&
      other.nshpToTrainMonthly == nshpToTrainMonthly &&
      other.tss == tss &&
      other.tt == tt &&
      other.tp == tp &&
      other.lt == lt &&
      other.lp == lp &&
      other.ca == ca &&
      other.cp == cp &&
      other.va == va &&
      other.vp == vp &&
      other.epfs == epfs &&
      other.apfs == apfs &&
      other.ppfs == ppfs &&
      other.ainteng == ainteng &&
      other.pinteng == pinteng &&
      other.aloan == aloan &&
      other.ploan == ploan &&
      other.loanAmount == loanAmount &&
      other.ateachingDev == ateachingDev &&
      other.pteachingdev == pteachingdev &&
      other.aedt == aedt &&
      other.pedt == pedt &&
      other.assa == assa &&
      other.pssa == pssa &&
      other.aasa == aasa &&
      other.pasa == pasa &&
      other.amsc == amsc &&
      other.pmsc == pmsc &&
      other.acoremetrics == acoremetrics &&
      other.pcoremetrics == pcoremetrics &&
      other.aclientmetrics == aclientmetrics &&
      other.pclientmetrics == pclientmetrics &&
      other.eDCs == eDCs &&
      other.aDCs == aDCs &&
      other.pDCs == pDCs &&
      other.aNE == aNE &&
      other.pNE == pNE &&
      other.sWithAlm == sWithAlm &&
      other.studentsInAlm == studentsInAlm &&
      other.month == month &&
      other.quarter == quarter &&
      other.fy == fy;
  }

  @override
  int get hashCode {
    return nsMonthly.hashCode ^
      nsQuarterly.hashCode ^
      nspQuarterly.hashCode ^
      cohort.hashCode ^
      csMonthly.hashCode ^
      csQuarterly.hashCode ^
      cspQuarterly.hashCode ^
      tName.hashCode ^
      tType.hashCode ^
      nsTrainedMonthly.hashCode ^
      nsTrainedQuarterly.hashCode ^
      nspToTrainMonthly.hashCode ^
      nsoTrainedMonthly.hashCode ^
      nsoTrainedQuarterly.hashCode ^
      nsopToTrainMonthly.hashCode ^
      nshTrainedMonthly.hashCode ^
      nshTrainedQuarterly.hashCode ^
      nshpToTrainMonthly.hashCode ^
      tss.hashCode ^
      tt.hashCode ^
      tp.hashCode ^
      lt.hashCode ^
      lp.hashCode ^
      ca.hashCode ^
      cp.hashCode ^
      va.hashCode ^
      vp.hashCode ^
      epfs.hashCode ^
      apfs.hashCode ^
      ppfs.hashCode ^
      ainteng.hashCode ^
      pinteng.hashCode ^
      aloan.hashCode ^
      ploan.hashCode ^
      loanAmount.hashCode ^
      ateachingDev.hashCode ^
      pteachingdev.hashCode ^
      aedt.hashCode ^
      pedt.hashCode ^
      assa.hashCode ^
      pssa.hashCode ^
      aasa.hashCode ^
      pasa.hashCode ^
      amsc.hashCode ^
      pmsc.hashCode ^
      acoremetrics.hashCode ^
      pcoremetrics.hashCode ^
      aclientmetrics.hashCode ^
      pclientmetrics.hashCode ^
      eDCs.hashCode ^
      aDCs.hashCode ^
      pDCs.hashCode ^
      aNE.hashCode ^
      pNE.hashCode ^
      sWithAlm.hashCode ^
      studentsInAlm.hashCode ^
      month.hashCode ^
      quarter.hashCode ^
      fy.hashCode;
  }

}
