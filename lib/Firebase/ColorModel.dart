class ColorModel{
  String? name;
  final List<String>? values;
  
  ColorModel({this.name,this.values,});
  factory ColorModel.fromJson(Map<String, dynamic> json){
    final data=json;
    if(data.isEmpty) return ColorModel();
    
    return ColorModel(
      name: json.containsKey('pcolor') ? json['pcolor'] : '',
      values: List<String>.from(json['pcolor'])
    );
  }
}