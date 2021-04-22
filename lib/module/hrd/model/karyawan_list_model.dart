class KaryawanListModel {
  String msg;
  int count;
  int numRows;
  List<Data> data;

  KaryawanListModel({this.msg, this.count, this.numRows, this.data});

  KaryawanListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    count = json['count'];
    numRows = json['num_rows'];
    if (json['data'] != null) {
      // ignore: deprecated_member_use
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['count'] = this.count;
    data['num_rows'] = this.numRows;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String karyawanId;
  String nik;
  String name;
  String phone;
  String email;
  Divisi divisi;
  Divisi jabatan;
  String author;

  Data(
      {this.karyawanId,
      this.nik,
      this.name,
      this.phone,
      this.email,
      this.divisi,
      this.jabatan,
      this.author});

  Data.fromJson(Map<String, dynamic> json) {
    karyawanId = json['karyawan_id'];
    nik = json['nik'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    divisi =
        json['divisi'] != null ? new Divisi.fromJson(json['divisi']) : null;
    jabatan =
        json['jabatan'] != null ? new Divisi.fromJson(json['jabatan']) : null;
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['karyawan_id'] = this.karyawanId;
    data['nik'] = this.nik;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    if (this.divisi != null) {
      data['divisi'] = this.divisi.toJson();
    }
    if (this.jabatan != null) {
      data['jabatan'] = this.jabatan.toJson();
    }
    data['author'] = this.author;
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
