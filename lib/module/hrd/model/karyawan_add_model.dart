class KaryawanAddModel {
  String msg;
  String email;
  String name;
  String karyawanId;
  String mobilePhone;
  String nik;

  KaryawanAddModel(
      {this.msg,
      this.email,
      this.name,
      this.karyawanId,
      this.mobilePhone,
      this.nik});

  KaryawanAddModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    email = json['email'] ?? "";
    name = json['name'] ?? "";
    karyawanId = json['karyawan_id'] ?? "";
    mobilePhone = json['mobile_phone'] ?? "";
    nik = json['nik'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['email'] = this.email;
    data['name'] = this.name;
    data['karyawan_id'] = this.karyawanId;
    data['mobile_phone'] = this.mobilePhone;
    data['nik'] = this.nik;
    return data;
  }
}
