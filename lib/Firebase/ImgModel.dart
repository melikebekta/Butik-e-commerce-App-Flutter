class ImgModel{
  String? name;
  final List<String>? values;

  ImgModel({this.name,this.values,});
  factory ImgModel.fromJson(Map<String, dynamic> json){
    final data=json;
    if(data.isEmpty) return ImgModel();

    return ImgModel(
        name: json.containsKey('imgUrl') ? json['imgUrl'] : '',
        values: List<String>.from(json['imgUrl'])
    );
  }
}