class SizeModel{
  String? name;
  final List<String>? values;

  SizeModel({this.name,this.values,});
  factory SizeModel.fromJson(Map<String, dynamic> json){
    final data=json;
    if(data.isEmpty) return SizeModel();

    return SizeModel(
        name: json.containsKey('psize') ? json['psize'] : '',
        values: List<String>.from(json['psize'])
    );
  }
}