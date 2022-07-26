class RecentWork {
  final String? image, category, title;
  final int? id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Room Kreativz - StartUp Ficticia",
    category: "Front-End",
    image: "assets/images/logo-site-room-kreativz.png",
  ),
  RecentWork(
    id: 2,
    title: "Museu Nacional",
    category: "Front-end",
    image: "assets/images/logo-site-museu.png",
  ),
  RecentWork(
    id: 3,
    title: "Anna Bela",
    category: "Front-end",
    image: "assets/images/logo-site-annabela.png",
  ),
  RecentWork(
    id: 4,
    title: "Chalé Hotel",
    category: "Front-end",
    image: "assets/images/logo-site-chalehotel.png",
  ),
  RecentWork(
    id: 5,
    title: "Noticias da Cidade",
    category: "front-end",
    image: "assets/images/logo-site-noticias-cidade.png",
  ),
  RecentWork(
    id: 6,
    title: "UNES - universidade",
    category: "front-end",
    image: "assets/images/logo-site-unes.png",
  ),
];
