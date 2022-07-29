class RecentWork {
  final String? image, category, title, url, descricao;
  final int? id;

  RecentWork({
    this.descricao,
    this.id,
    this.image,
    this.category,
    this.title,
    this.url,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Room Kreativz - StartUp Ficticia",
    category: "Front-End",
    image: "assets/images/logo-site-room-kreativz.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao:
        "Site criado com as ferramentas: HTML5, CSS e javascript. \n\n a Room Kriativz é uma agência digital fictícia. site criado para orientar sobre o mundo do marketing digital, sua origem e principalmente o porque você deve criar uma imagem digital para sua empresa.",
  ),
  RecentWork(
    id: 2,
    title: "Coraline",
    category: "Social Media",
    image: "assets/images/Coraline.png",
    url: "assets/images/Coraline.png",
  ),
  RecentWork(
    id: 3,
    title: "Ecommerce App",
    category: "Flutter",
    image: "assets/images/ecommerce.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao: "Descrição do Room Kreativz",
  ),
  RecentWork(
    id: 4,
    title: "Museu Nacional",
    category: "Front-end",
    image: "assets/images/museu-nacional.png",
    url: "assets/images/museu-nacional.png",
    descricao: "Descrição do Room Kreativz",
  ),
  RecentWork(
    id: 5,
    title: "Anna Bela",
    category: "Front-end",
    image: "assets/images/anna-bella.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao: "Descrição do Room Kreativz",
  ),
  RecentWork(
    id: 6,
    title: "Chalé Hotel",
    category: "Front-end",
    image: "assets/images/chale-hotel.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao: "Descrição do Room Kreativz",
  ),
  RecentWork(
    id: 7,
    title: "Noticias da Cidade",
    category: "front-end",
    image: "assets/images/noticias-cidade.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao: "Descrição do Room Kreativz",
  ),
  RecentWork(
    id: 8,
    title: "UNES - universidade",
    category: "front-end",
    image: "assets/images/unes.png",
    url: "http://room-kreativz.herokuapp.com/",
    descricao: "Descrição do Room Kreativz",
  ),
];
