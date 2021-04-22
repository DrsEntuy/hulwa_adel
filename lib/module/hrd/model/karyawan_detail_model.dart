class KaryawanDetailModel {
  String msg;
  String karyawanId;
  String nik;
  String name;
  String email;
  String phone;
  Setup role;
  String tglLahir;
  String noKtp;
  String noNpwp;
  String noRekening;
  String statusPernikahan;
  String pendidikan;
  String mulaiBergabung;
  String alamat;
  String emergencyContact;
  String noBpjsKesehatan;
  String noBpjsKetenagakerjaan;
  Divisi divisi;
  Divisi jabatan;
  String statusKaryawan;
  String pasFoto;
  String fileKk;
  String fileKtp;
  String fileNpwp;
  String fileCv;
  String filePsikotest;
  Divisi author;

  KaryawanDetailModel(
      {this.msg,
      this.karyawanId,
      this.nik,
      this.name,
      this.email,
      this.phone,
      this.role,
      this.tglLahir,
      this.noKtp,
      this.noNpwp,
      this.noRekening,
      this.statusPernikahan,
      this.pendidikan,
      this.mulaiBergabung,
      this.alamat,
      this.emergencyContact,
      this.noBpjsKesehatan,
      this.noBpjsKetenagakerjaan,
      this.divisi,
      this.jabatan,
      this.statusKaryawan,
      this.pasFoto,
      this.fileKk,
      this.fileKtp,
      this.fileNpwp,
      this.fileCv,
      this.filePsikotest,
      this.author});

  KaryawanDetailModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    karyawanId = json['karyawan_id'];
    nik = json['nik'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    role = json['role'] != null ? new Setup.fromJson(json['role']) : null;
    tglLahir = json['tgl_lahir'];
    noKtp = json['no_ktp'];
    noNpwp = json['no_npwp'];
    noRekening = json['no_rekening'];
    statusPernikahan = json['status_pernikahan'];
    pendidikan = json['pendidikan'];
    mulaiBergabung = json['mulai_bergabung'];
    alamat = json['alamat'];
    emergencyContact = json['emergency_contact'];
    noBpjsKesehatan = json['no_bpjs_kesehatan'];
    noBpjsKetenagakerjaan = json['no_bpjs_ketenagakerjaan'];
    divisi =
        json['divisi'] != null ? new Divisi.fromJson(json['divisi']) : null;
    jabatan =
        json['jabatan'] != null ? new Divisi.fromJson(json['jabatan']) : null;
    statusKaryawan = json['status_karyawan'];
    pasFoto = json['pas_foto'] ?? "";
    fileKk = json['file_kk'];
    fileKtp = json['file_ktp'];
    fileNpwp = json['file_npwp'];
    fileCv = json['file_cv'];
    filePsikotest = json['file_psikotest'];
    author =
        json['author'] != null ? new Divisi.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['karyawan_id'] = this.karyawanId;
    data['nik'] = this.nik;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    data['tgl_lahir'] = this.tglLahir;
    data['no_ktp'] = this.noKtp;
    data['no_npwp'] = this.noNpwp;
    data['no_rekening'] = this.noRekening;
    data['status_pernikahan'] = this.statusPernikahan;
    data['pendidikan'] = this.pendidikan;
    data['mulai_bergabung'] = this.mulaiBergabung;
    data['alamat'] = this.alamat;
    data['emergency_contact'] = this.emergencyContact;
    data['no_bpjs_kesehatan'] = this.noBpjsKesehatan;
    data['no_bpjs_ketenagakerjaan'] = this.noBpjsKetenagakerjaan;
    if (this.divisi != null) {
      data['divisi'] = this.divisi.toJson();
    }
    if (this.jabatan != null) {
      data['jabatan'] = this.jabatan.toJson();
    }
    data['status_karyawan'] = this.statusKaryawan;
    data['pas_foto'] = this.pasFoto;
    data['file_kk'] = this.fileKk;
    data['file_ktp'] = this.fileKtp;
    data['file_npwp'] = this.fileNpwp;
    data['file_cv'] = this.fileCv;
    data['file_psikotest'] = this.filePsikotest;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class Role {
  String id;
  String name;
  Access access;

  Role({this.id, this.name, this.access});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    access =
        json['access'] != null ? new Access.fromJson(json['access']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.access != null) {
      data['access'] = this.access.toJson();
    }
    return data;
  }
}

class Access {
  Dashboard dashboard;
  Hrd hrd;
  Crm crm;
  Procurement procurement;
  Document document;
  Master master;
  User user;

  Access(
      {this.dashboard,
      this.hrd,
      this.crm,
      this.procurement,
      this.document,
      this.master,
      this.user});

  Access.fromJson(Map<String, dynamic> json) {
    dashboard = json['dashboard'] != null
        ? new Dashboard.fromJson(json['dashboard'])
        : null;
    hrd = json['hrd'] != null ? new Hrd.fromJson(json['hrd']) : null;
    crm = json['crm'] != null ? new Crm.fromJson(json['crm']) : null;
    procurement = json['procurement'] != null
        ? new Procurement.fromJson(json['procurement'])
        : null;
    document = json['document'] != null
        ? new Document.fromJson(json['document'])
        : null;
    master =
        json['master'] != null ? new Master.fromJson(json['master']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dashboard != null) {
      data['dashboard'] = this.dashboard.toJson();
    }
    if (this.hrd != null) {
      data['hrd'] = this.hrd.toJson();
    }
    if (this.crm != null) {
      data['crm'] = this.crm.toJson();
    }
    if (this.procurement != null) {
      data['procurement'] = this.procurement.toJson();
    }
    if (this.document != null) {
      data['document'] = this.document.toJson();
    }
    if (this.master != null) {
      data['master'] = this.master.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class Dashboard {
  bool kpi;

  Dashboard({this.kpi});

  Dashboard.fromJson(Map<String, dynamic> json) {
    kpi = json['kpi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kpi'] = this.kpi;
    return data;
  }
}

class Hrd {
  Setup setup;
  Setup karyawan;
  Setup payroll;

  Hrd({this.setup, this.karyawan, this.payroll});

  Hrd.fromJson(Map<String, dynamic> json) {
    setup = json['setup'] != null ? new Setup.fromJson(json['setup']) : null;
    karyawan =
        json['karyawan'] != null ? new Setup.fromJson(json['karyawan']) : null;
    payroll =
        json['payroll'] != null ? new Setup.fromJson(json['payroll']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.setup != null) {
      data['setup'] = this.setup.toJson();
    }
    if (this.karyawan != null) {
      data['karyawan'] = this.karyawan.toJson();
    }
    if (this.payroll != null) {
      data['payroll'] = this.payroll.toJson();
    }
    return data;
  }
}

class Setup {
  bool create;
  bool list;
  bool update;
  bool delete;

  Setup({this.create, this.list, this.update, this.delete});

  Setup.fromJson(Map<String, dynamic> json) {
    create = json['create'];
    list = json['list'];
    update = json['update'];
    delete = json['delete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['create'] = this.create;
    data['list'] = this.list;
    data['update'] = this.update;
    data['delete'] = this.delete;
    return data;
  }
}

class Crm {
  Setup setup;
  Setup request;
  Setup survey;
  Setup instalasi;

  Crm({this.setup, this.request, this.survey, this.instalasi});

  Crm.fromJson(Map<String, dynamic> json) {
    setup = json['setup'] != null ? new Setup.fromJson(json['setup']) : null;
    request =
        json['request'] != null ? new Setup.fromJson(json['request']) : null;
    survey = json['survey'] != null ? new Setup.fromJson(json['survey']) : null;
    instalasi = json['instalasi'] != null
        ? new Setup.fromJson(json['instalasi'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.setup != null) {
      data['setup'] = this.setup.toJson();
    }
    if (this.request != null) {
      data['request'] = this.request.toJson();
    }
    if (this.survey != null) {
      data['survey'] = this.survey.toJson();
    }
    if (this.instalasi != null) {
      data['instalasi'] = this.instalasi.toJson();
    }
    return data;
  }
}

class Procurement {
  Setup stock;

  Procurement({this.stock});

  Procurement.fromJson(Map<String, dynamic> json) {
    stock = json['stock'] != null ? new Setup.fromJson(json['stock']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stock != null) {
      data['stock'] = this.stock.toJson();
    }
    return data;
  }
}

class Document {
  Setup form;
  Setup nodin;
  Setup suratmasuk;
  Setup suratkeluar;

  Document({this.form, this.nodin, this.suratmasuk, this.suratkeluar});

  Document.fromJson(Map<String, dynamic> json) {
    form = json['form'] != null ? new Setup.fromJson(json['form']) : null;
    nodin = json['nodin'] != null ? new Setup.fromJson(json['nodin']) : null;
    suratmasuk = json['suratmasuk'] != null
        ? new Setup.fromJson(json['suratmasuk'])
        : null;
    suratkeluar = json['suratkeluar'] != null
        ? new Setup.fromJson(json['suratkeluar'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.form != null) {
      data['form'] = this.form.toJson();
    }
    if (this.nodin != null) {
      data['nodin'] = this.nodin.toJson();
    }
    if (this.suratmasuk != null) {
      data['suratmasuk'] = this.suratmasuk.toJson();
    }
    if (this.suratkeluar != null) {
      data['suratkeluar'] = this.suratkeluar.toJson();
    }
    return data;
  }
}

class Master {
  Setup paket;
  Setup kost;

  Master({this.paket, this.kost});

  Master.fromJson(Map<String, dynamic> json) {
    paket = json['paket'] != null ? new Setup.fromJson(json['paket']) : null;
    kost = json['kost'] != null ? new Setup.fromJson(json['kost']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.paket != null) {
      data['paket'] = this.paket.toJson();
    }
    if (this.kost != null) {
      data['kost'] = this.kost.toJson();
    }
    return data;
  }
}

class User {
  Setup role;
  bool log;

  User({this.role, this.log});

  User.fromJson(Map<String, dynamic> json) {
    role = json['role'] != null ? new Setup.fromJson(json['role']) : null;
    log = json['log'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    data['log'] = this.log;
    return data;
  }
}

class Divisi {
  String id;
  String name;

  Divisi({this.id, this.name});

  Divisi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
