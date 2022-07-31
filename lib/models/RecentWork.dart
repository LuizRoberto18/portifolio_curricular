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
    title: "MyMoto - App",
    category: "Flutter",
    image: "assets/images/mymoto-app.png",
    url: "https://play.google.com/store/apps/details?id=com.notna.mymoto",
    descricao:
        "App desenvolvido para Android e IOS, com framework Flutter utilizando as ferramentas: linguagem de programação Dart com estrutura Bloc, MVC, Firebase, API Rest e SQL\n\n Criado para auxiliar motociclistas na manutenção e prevenção de acidentes, MyMoto foi projeto pensando em diferentes modelos de motos. podendo cadastrar sua moto, data da última manutenção da peça específica, troca de óleo, abastecimento e muito mais. para não precisar verificar o app a todo instante o MyMoto irá notificar sempre que necessário. MyMoto também está pronto para lhe mostrar todas as oficinas e postos de combustíveis próximos a sua localização, ou seja, tudo que você precisa em um só lugar.",
  ),
  RecentWork(
    id: 3,
    title: "Ecommerce - App",
    category: "Flutter",
    image: "assets/images/ecommerce.png",
    url: "https://github.com/LuizRoberto18/ecommerce_app",
    descricao:
        "App desenvolvido para Android e IOS, com framework Flutter utilizando as ferramentas: linguagem de programação Dart com estrutura Bloc e MVC. \n\n Ecommerce App é um modelo completo para seu empreendimento ter destaque entre a concorrência, com Layout autodescritivo fica simples e fluído, navegar entre suas telas é muito fácil!.",
  ),
  RecentWork(
    id: 4,
    title: "Museu Nacional",
    category: "Front-end",
    image: "assets/images/museu-nacional.png",
    url: "https://github.com/LuizRoberto18/Modelo-Museu-Page",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Site ficticio para o Museu nacional com suas informações reais",
  ),
  RecentWork(
    id: 5,
    title: "Anna Bela",
    category: "Front-end",
    image: "assets/images/anna-bella.png",
    url: "https://github.com/LuizRoberto18/PortifolioModelo",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n  Modelo de site portifólio para galeria e publicações de modelos.",
  ),
  RecentWork(
    id: 6,
    title: "Chalé Hotel",
    category: "Front-end",
    image: "assets/images/chale-hotel.png",
    url: "https://github.com/LuizRoberto18/ChaleHotel",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Modelo de site para Hoteis com layout fluído.",
  ),
  RecentWork(
    id: 7,
    title: "Noticias da Cidade",
    category: "front-end",
    image: "assets/images/noticias-cidade.png",
    url: "https://github.com/LuizRoberto18/SiteNoticiasCidade",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Modelo de site de noticias com layout fluído.",
  ),
  RecentWork(
    id: 8,
    title: "UNES - universidade",
    category: "front-end",
    image: "assets/images/unes.png",
    url: "https://github.com/LuizRoberto18/UnesModeloAcademico",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Modelo de site academico com layout fluído.",
  ),
  RecentWork(
    id: 9,
    title: "Expenses - App",
    category: "Flutter",
    image: "assets/images/expenses-app.png",
    url: "https://github.com/LuizRoberto18/expenses_app",
    descricao:
        "App 100% responsivo desenvolvido para Android e IOS, com framework Flutter utilizando as ferramentas: linguagem de programação Dart com estrutura MVC. \n\n O app cria uma lista de despesas com descrição, valor e data. Somando os gastos do dia e usando porcentagem de gastos durante a semana e exibi-los em  um gráfico.",
  ),
  RecentWork(
    id: 10,
    title: "Sistema de estacionamento",
    category: "Back-End",
    image: "assets/images/estacionamento.png",
    url: "https://github.com/LuizRoberto18/SistemaEstacionamento",
    descricao:
        "Ferramentas: Framework Spring boot MVC; \nback-end: Java, \nfront-end: HTML5, CSS 3 e Java script;\n integração com banco de dados MySQL.\n\ndescrição:\nsistema de estacionamento criado com CRUD para o usuário e outro CRUD para os veículos, podendo fazer a criação de usuários para estacionar seu veículo e somente o usuário admin pode criar e fazer as movimentações dos veículos estacionados, conforme descrito na regra de negócio.",
  ),
  RecentWork(
    id: 11,
    title: "Coffe Break",
    category: "Front-End",
    image: "assets/images/coffe-break.png",
    url: "https://meu-coffee-break.herokuapp.com/",
    descricao:
        "aplicação web criada com as ferramentas: HTML5, CSS e javascript\n\n modelo de web site para lojas online.",
  ),
  RecentWork(
    id: 12,
    title: "CRUD NodeJs",
    category: "Back-End",
    image: "assets/images/back-end.png",
    url: "https://github.com/LuizRoberto18/CRUDNodeJs",
    descricao:
        "Aplicação Back-end desenvolvido com NodeJs na linguagem de programação JavaScript, MySql, Sequelize, MVC e Express.\n\n CRUD funcional para criar, listar, atualizar e deletar cursos no banco de dados MySql, testado com Postman e Insomnia. pronto para integração com APIs",
  ),
  RecentWork(
    id: 13,
    title: "Coraline",
    category: "Social Media",
    image: "assets/images/Coraline.png",
    url: "assets/images/Coraline.png",
  ),
  RecentWork(
    id: 14,
    title: "Social midia - Eventos",
    category: "Design gráfico",
    image: "assets/images/post-eventos.png",
    url: "assets/images/post-eventos.png",
  ),
  RecentWork(
    id: 15,
    title: "Social midia - Hotel",
    category: "Design gráfico",
    image: "assets/images/post-ferias.png",
    url: "assets/images/post-ferias.png",
  ),
  RecentWork(
    id: 16,
    title: "Social midia - Coraline",
    category: "Design gráfico",
    image: "assets/images/coraline-capa.png",
    url: "assets/images/coraline-capa.png",
  ),
  RecentWork(
    id: 17,
    title: "Tec Blog",
    category: "front-end",
    image: "assets/images/tec-blog.png",
    url: "https://github.com/LuizRoberto18/TecBog",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Modelo de blog para noticias com layout fluído.",
  ),
  RecentWork(
    id: 17,
    title: "Parallax",
    category: "front-end",
    image: "assets/images/parallax.png",
    url: "https://github.com/LuizRoberto18/PerspectivaParallax",
    descricao:
        "Site criado com as ferramentas: HTML5 e CSS3.\n\n Modelo de blog para noticias com layout fluído e pespectiva parallax.",
  ),
];
