class user {
  final String name;
  final String email;
  final int? coreTuNhien;
  final int? coreXaHoi;
  final int? coreKhoaHoc;
  final int? coreCongNghe;
  final int? coreTheThao;
final int? EXP;
  final int coreBattle;
  final String password;

  user(this.name, this.email, this.coreBattle, this.password, this.coreCongNghe,
      this.coreKhoaHoc, this.coreTheThao, this.coreTuNhien, this.coreXaHoi, this.EXP);

  user.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        coreBattle = json['corebattle'],
        password = json['password'],
        coreCongNghe = json['coreCongNghe'],
        coreKhoaHoc = json['coreKhoaHoc'],
        coreTheThao = json['coreTheThao'],
        coreTuNhien = json['coreTuNhien'],
        coreXaHoi = json['coreXaHoi'],
        EXP = json['EXP'];

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'email': email,
      'corebattle': coreBattle,
      'password': password,
      'coreCongNghe': coreCongNghe,
      'coreKhoaHoc': coreKhoaHoc,
      'coreTheThao': coreTheThao,
      'coreTuNhien': coreTuNhien,
      'coreXaHoi': coreXaHoi,
      'EXP':EXP,
    };
  }
  
}
