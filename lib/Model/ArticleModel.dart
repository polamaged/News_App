class Articelmodel{
  final String? img ;
  final String? title;
  final String? subtitle;
  final String url;

  Articelmodel({required this.img , required this.title , required this.subtitle,required this.url});

  factory Articelmodel.fromjson(json)
  {
    return Articelmodel(
        img: json['image_url'],
        title: json['title'],
        subtitle: json['description'],
        url:json['link'],

    );
  }
}