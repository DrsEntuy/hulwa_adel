class LoginModel {
  String msg;
  String nik;
  String name;
  String email;
  String phone;
  String karyawanId;
  Setup role;
  Accessrole accessrole;
  String token;

  LoginModel(
      {this.msg,
      this.nik,
      this.name,
      this.email,
      this.phone,
      this.karyawanId,
      this.role,
      this.accessrole,
      this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    nik = json['nik'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    karyawanId = json['karyawan_id'];
    role = json['role'] != null ? new Setup.fromJson(json['role']) : null;
    accessrole = json['accessrole'] != null
        ? new Accessrole.fromJson(json['accessrole'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['nik'] = this.nik;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['karyawan_id'] = this.karyawanId;
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    if (this.accessrole != null) {
      data['accessrole'] = this.accessrole.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Role {
  String id;
  String name;

  Role({this.id, this.name});

  Role.fromJson(Map<String, dynamic> json) {
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

class Accessrole {
  Dashboard dashboard;
  Hrd hrd;
  Crm crm;
  Procurement procurement;
  Document document;
  Master master;
  User user;

  Accessrole(
      {this.dashboard,
      this.hrd,
      this.crm,
      this.procurement,
      this.document,
      this.master,
      this.user});

  Accessrole.fromJson(Map<String, dynamic> json) {
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
