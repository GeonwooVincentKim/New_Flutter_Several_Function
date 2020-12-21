

import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/model/game/genre.dart';
import 'package:flutter_app/model/game/platform.dart';
import 'package:flutter_app/model/game/publisher.dart';

const DUMMY_PUBLISHERS = const [
  Publisher(
      id: 'e1',
      name: 'Atlus',
      description: 'Atlus Co., Ltd. (株式会社アトラス, Kabushiki gaisha Atorasu) is a Japanese video game developer, publisher, and distribution company based in Tokyo.',
      country: 'Japan'
  ),
  Publisher(
      id: 'e2',
      name: 'Nintendo',
      description: 'Nintendo Co., Ltd. is a Japanese multinational consumer electronics and video game company headquartered in Kyoto. The company was founded in 1889 as Nintendo Karuta by craftsman Fusajiro Yamauchi and originally produced handmade hanafuda playing cards. After venturing into various lines of business during the 1960s and acquiring a legal status as a public company under the current company name, Nintendo distributed its first video game console, the Color TV-Game, in 1977. It gained international recognition with the release of the Nintendo Entertainment System in 1985.',
      country: 'Japan'
  ),
  Publisher(
      id: 'e3',
      name: 'Nexon',
      description: 'Nexon Co., Ltd. (Korean: 넥슨; RR: Nekseun) is a South Korean–Japanese video game publisher that specializes in online games for PC and mobile. It maintains over 80 titles. Nexon was founded in Seoul, South Korea in 1994 by Kim Jung Ju (김정주) and Jake Song. In 2005, the company moved its headquarters to Tokyo, Japan.',
      country: 'South Korea'
  ),
  Publisher(
      id: 'e4',
      name: 'Square Enix',
      description: 'The Square Enix Holdings Company, Ltd. is a Japanese video game holding company, best known for its Final Fantasy, Dragon Quest, and Kingdom Hearts role-playing video game franchises, among numerous others. Several of them have sold over 10 million copies worldwide, with the Final Fantasy franchise alone selling 144 million, the Dragon Quest franchise selling 78 million and the Kingdom Hearts franchise selling 30 million.',
      country: 'Japan'
  ),
  Publisher(
      id: 'e5',
      name: 'Blizzard Entertainment',
      description: 'Blizzard Entertainment, Inc. is an American video game developer and publisher based in Irvine, California. A subsidiary of Activision Blizzard, the company was founded on February 8, 1991, under the name Silicon & Synapse, Inc. by three graduates of the University of California, Los Angeles: Michael Morhaime, Frank Pearce and Allen Adham.',
      country: 'USA'
  ),
  Publisher(
      id: 'e6',
      name: 'Riot Games',
      description: 'Riot Games, Inc. is an American video game developer, publisher, and esports tournament organizer based in West Los Angeles, California. The company was founded in September 2006 by University of Southern California roommates Brandon Beck and Marc Merrill, as they sought to create a company that continuously improves on an already released game, instead of commencing development on a new one.',
      country: 'USA'
  )
];

const DUMMY_GENRES = const [
  Genre(
    id: 'g1',
    name: 'RPG',
    description: "A role-playing game (sometimes spelled roleplaying game; abbreviated RPG) is a game in which players assume the roles of characters in a fictional setting. Players take responsibility for acting out these roles within a narrative, either through literal acting, or through a process of structured decision-making regarding character development. Actions taken within many games succeed or fail according to a formal system of rules and guidelines.",
  ),
  Genre(
      id: 'g2',
      name: 'Simulation',
      description: "A simulation video game describes a diverse super-category of video games, generally designed to closely simulate real world activities. A simulation game attempts to copy various activities from real life in the form of a game for various purposes such as training, analysis, or prediction. Usually there are no strictly defined goals in the game, with the player instead allowed to control a character or environment freely."
  ),
  Genre(
      id: 'g3',
      name: 'Action',
      description: "An action game is a video game genre that emphasizes physical challenges, including hand–eye coordination and reaction-time."
  ),
  Genre(
      id: 'g4',
      name: 'Adventure',
      description: "An adventure game is a video game in which the player assumes the role of a protagonist in an interactive story driven by exploration and puzzle-solving. The genre's focus on story allows it to draw heavily from other narrative-based media, literature and film, encompassing a wide variety of literary genres."
  ),
  Genre(
      id: 'g5',
      name: 'Fighting',
      description: "A fighting game is a video game genre based around close combat between a limited number of characters, in a stage in which the boundaries are fixed. The characters fight each others until they defeat their opponents or the time expires."
  ),
  Genre(
      id: 'g6',
      name: 'Racing',
      description: "The racing video game genre is the genre of video games, either in the first-person or third-person perspective, in which the player partakes in a racing competition with any type of land, water, air or space vehicles."
  ),
  Genre(
      id: 'g7',
      name: 'FPS',
      description: "First-person shooter (FPS) is a video game genre centered on gun and other weapon-based combat in a first-person perspective; that is, the player experiences the action through the eyes of the protagonist."
  ),
  Genre(
      id: 'g8',
      name: 'MOBA',
      description: "Multiplayer online battle arena (MOBA) is a subgenre of strategy video games in which each player controls a single character as part of a team competing against another team of players, usually on a battlefield shown from an isometric perspective. The ultimate objective is to destroy opposing team's main structure with the assistance of periodically-spawned computer-controlled units that march forward along set paths. "
  )
];

const DUMMY_PLATFORMS = const [
  PlatformG(
      id: 'p1',
      name: 'Playstation 3',
      description: 'The PlayStation 3 (officially abbreviated as PS3) is a home video game console developed by Sony Computer Entertainment.',
      developer: 'Sony Computer Entertainment'
  ),
  PlatformG(
      id: 'p2',
      name: 'Playstation 4',
      description: 'The PlayStation 4 (PS4) is an eighth-generation home video game console developed by Sony Computer Entertainment.',
      developer: 'Sony Computer Entertainment'
  ),
  PlatformG(
      id: 'p3',
      name: 'Wii U',
      description: "The Wii U (/ˌwiː ˈjuː/ WEE YOO) is a home video game console developed by Nintendo as the successor to the Wii. Released in late 2012, it is the first eighth-generation video game console and competed with Microsoft's Xbox One and Sony's PlayStation 4.",
      developer: 'Nintendo'
  ),
  PlatformG(
      id: 'p4',
      name: 'Switch',
      description: 'The Nintendo Switch is a video game console developed by Nintendo, released worldwide in most regions on March 3, 2017. It is a hybrid console that can be used as a home console and portable device.',
      developer: 'Nintendo'
  ),
  PlatformG(
      id: 'p5',
      name: 'Xbox One',
      description: 'The Xbox One is an eighth-generation home video game console developed by Microsoft. Announced in May 2013, it is the successor to Xbox 360 and the third console in the Xbox series of video game consoles.',
      developer: 'Microsoft'
  ),
  PlatformG(
      id: 'p6',
      name: 'PC'
  ),
  PlatformG(
      id: 'p7',
      name: 'Mobile'
  ),
  PlatformG(
      id: 'p8',
      name: '3DS',
      description: 'The Nintendo 3DS is a handheld game console produced by Nintendo. The system was announced in March 2010 and officially unveiled at E3 2010 as the successor to the Nintendo DS.',
      developer: 'Nintendo'
  ),
  PlatformG(
      id: 'p9',
      name: 'GameCube',
      description: "The Nintendo GameCube is a home video game console released by Nintendo in Japan and North America in 2001 and in PAL territories in 2002. The GameCube is Nintendo's entry in the sixth generation of video game consoles and is the successor to their previous console, the Nintendo 64. The GameCube competed with Sony's PlayStation 2 and Microsoft's Xbox.",
      developer: 'Nintendo'
  ),
];

var DUMMY_GAMES = [
  Game(
      id: 'ga1',
      title: 'Persona 5',
      images: ['assets/img/games/persona5/persona5-2.jpg', 'assets/img/games/persona5/persona5.png'],
      platforms: [ 'p1', 'p2' ],
      genres: [ 'g1', 'g2' ],
      publisher: 'e1',
      description: "Persona 5 is a role-playing video game developed by Atlus. It is the sixth installment in the Persona series, which is part of the larger Megami Tensei franchise. Persona 5 takes place in modern-day Tokyo and follows a high school student known by the pseudonym Joker who transfers to a new school after being falsely accused of assault and put on probation. Over the course of a school year, he and other students awaken to a special power, becoming a group of secret vigilantes known as the Phantom Thieves of Hearts. They explore the Metaverse, a supernatural realm born from humanity's subconscious desires, to steal malevolent intent from the hearts of adults. As with previous games in the series, the party battles enemies known as Shadows using physical manifestations of their psyche known as their Personas. The game incorporates role-playing and dungeon crawling elements alongside social simulation scenarios.",
      releaseDate: '2016/09/15',
      isFavorite: true,
      progression: 90,
      videoUrl: "https://www.youtube.com/watch?v=YKfaPgl8N8E"
  ),
  Game(
      id: 'ga2',
      title: 'The legend of Zelda: Breath of the Wild',
      images: ['assets/img/games/zeldaBreathOfTheWild/zelda-breath-of-the-wild.jpeg', 'assets/img/games/zeldaBreathOfTheWild/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg'],
      platforms: [ 'p3', 'p4' ],
      genres: [ 'g3', 'g4' ],
      publisher: 'e2',
      description: "The Legend of Zelda: Breath of the Wild is a 2017 action-adventure game developed and published by Nintendo for the Nintendo Switch and Wii U consoles. Breath of the Wild is part of the Legend of Zelda franchise and is set at the end of the Zelda timeline; the player controls Link, who awakens from a hundred-year slumber to defeat Calamity Ganon and save the kingdom of Hyrule.",
      releaseDate: '2017/03/03',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=zw47_q9wbBE&ab_channel=Nintendo",
      progression: 10
  ),
  Game(
      id: 'ga3',
      title: 'Fire Emblem Three Houses',
      images: ['assets/img/games/fireEmblemThreeHouses/fire-emblem-three-houses.jpg', 'assets/img/games/fireEmblemThreeHouses/fire-emblem-three-houses-official-site-jp-may122019.jpg'],
      platforms: [ 'p4' ],
      genres: [ 'g1' ],
      publisher: 'e2',
      description: "Fire Emblem: Three Houses is a tactical role-playing game developed by Intelligent Systems and Koei Tecmo for the Nintendo Switch and published worldwide by Nintendo on July 26, 2019. It is an entry in the Fire Emblem series, and the first one for home consoles since Fire Emblem: Radiant Dawn, originally released in 2007. Three Houses is set on the continent of Fódlan, divided between three rival nations now at peace, connected through the Garreg Mach Monastery. Taking the role of a former mercenary and new tutor at Garreg Mach, the player must choose a nation to support and guide them through a series of battles. The game carries over the turn-based tactical gameplay of earlier Fire Emblem titles, while incorporating social simulation and time management elements.",
      releaseDate: '2019/07/26',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=ADaRsEhTB70&ab_channel=Nintendo",
      progression: 100
  ),
  Game(
      id: 'ga4',
      title: 'Super Smash Bros. Ultimate',
      images: ['assets/img/games/superSmashBrosUltimate/super-smash-bros-ultimate-cover.jpg', 'assets/img/games/image.jpeg'],
      platforms: [ 'p4' ],
      genres: [ 'g5' ],
      publisher: 'e2',
      description: "Super Smash Bros. Ultimate is a 2018 crossover fighting game developed by Bandai Namco Studios and Sora Ltd. and published by Nintendo for the Nintendo Switch. It is the fifth installment in the Super Smash Bros. series, succeeding Super Smash Bros. for Nintendo 3DS and Wii U. The game follows the series' traditional style of gameplay: controlling one of the various characters, players must use differing attacks to weaken their opponents and knock them out of an arena. It features a wide variety of game modes, including a campaign for single-player and multiplayer versus modes. ",
      releaseDate: '2018/12/07',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=WShCN-AYHqA&ab_channel=SuperSmashBros",
      progression: 50
  ),
  Game(
      id: 'ga5',
      title: 'Crazyracing Kartrider',
      images: ['assets/img/games/CrazyracingKartrider/images.jpeg', 'assets/img/games/CrazyracingKartrider/KartRiderRush-3.jpg'],
      platforms: [ 'p6', 'p7' ],
      genres: [ 'g6' ],
      publisher: 'e3',
      description: "Crazyracing KartRider (Korean: 크레이지레이싱 카트라이더) is an online multiplayer racing game developed by Nexon Korea Corporation. It is part of the Crazy Arcade franchise. It earns revenue by selling virtual items within the in-game shop, including different types of vehicles and spraypaints. KartRider features fictitious fantasy vehicles and branded game models based on real-life cars, developed in collaboration with companies such as BMW Korea. About 25% of South Koreans have played the game at least once.",
      releaseDate: '2004/06/01',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=6KIKMbpt1Jc&ab_channel=NexonMobileGames",
      progression: 0
  ),
  Game(
      id: 'ga6',
      title: 'Kingdom Hearts III',
      images: ['assets/img/games/kindomHearts3/kh3-cover.jpg', 'assets/img/games/kindomHearts3/kindom-hearts-3.jpeg'],
      platforms: [ 'p2', 'p5' ],
      genres: [ 'g1', 'g3' ],
      publisher: 'e4',
      description: "Kingdom Hearts III is a 2019 action role-playing game developed and published by Square Enix for the PlayStation 4 and Xbox One. It is the twelfth installment in the Kingdom Hearts series, and serves as a conclusion of the Dark Seeker Saga story arc that began with the original game. Set after the events of Kingdom Hearts 3D: Dream Drop Distance, returning protagonist Sora is joined by Donald Duck, Goofy, King Mickey and Riku in their search for seven guardians of light as they attempt to thwart Xehanort's plan to bring about a second Keyblade War. Their journey has them cross paths with characters and visit worlds based on different Disney and Pixar intellectual properties.",
      releaseDate: '2016/11/29',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=zrunNL3xsUY&ab_channel=GameSpot",
      progression: 0
  ),
  Game(
      id: 'ga7',
      title: 'Final Fantasy XV',
      images: ['assets/img/games/finalFantasy15/ff15-cover.jpg', 'assets/img/games/finalFantasy15/ff15-2.jpg'],
      platforms: [ 'p2', 'p5', 'p6' ],
      genres: [ 'g1', 'g3' ],
      publisher: 'e4',
      description: "Final Fantasy XV is an action role-playing game developed and published by Square Enix as part of the Final Fantasy series. It was released for the PlayStation 4 and Xbox One in 2016, Microsoft Windows in 2018, and Stadia as a launch title in 2019. The game features an open world environment and action-based battle system, incorporating quick-switching weapons, elemental magic, and other features such as vehicle travel and camping. The base campaign was later expanded with downloadable content (DLC), adding further gameplay options such as additional playable characters and multiplayer.",
      releaseDate: '2019/11/19',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=IiI7SMQA59Q&ab_channel=PlayStation",
      progression: 50
  ),
  Game(
      id: 'ga8',
      title: 'Overwatch',
      images: ['assets/img/games/overwatch/overwatch.jpg', 'assets/img/games/overwatch/overwatch-2.jpg'],
      platforms: [ 'p2', 'p5', 'p6' ],
      genres: [ 'g7' ],
      publisher: 'e5',
      description: "Overwatch is a team-based multiplayer first-person shooter developed and published by Blizzard Entertainment. Described as a hero shooter, Overwatch assigns players into two teams of six, with each player selecting from a roster of over 30 characters, known as heroes, each with a unique style of play that is divided into three general roles that fit their purpose. Players on a team work together to secure and defend control points on a map or escort a payload across the map in a limited amount of time.",
      releaseDate: '2016/05/24',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=FqnKB22pOC0",
      progression: 0
  ),
  Game(
      id: 'ga9',
      title: 'League of Legends',
      images: ['assets/img/games/leagueOfLegends/league-1.jpg', 'assets/img/games/leagueOfLegends/lol.jpg'],
      platforms: [ 'p6' ],
      genres: [ 'g8' ],
      publisher: 'e6',
      description: "League of Legends (LoL) is a multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and macOS. Inspired by Defense of the Ancients, the game follows a freemium model. In League of Legends, players assume the role of a champion with unique abilities and battle against a team of other player- or computer-controlled champions. In the main game mode, Summoner's Rift, the goal is to destroy the opposing team's Nexus, a structure that lies at the heart of their base, protected by defensive structures. Although other game modes exist, Summoner's Rift is the default League of Legends experience. Champions span a variety of classes and are a blend of various science fiction and fantasy tropes. The setting of the game, Runeterra, has been expanded through a variety of media, including short stories, comic books, computer-generated cinematics, and spin-off games.",
      releaseDate: '2009/10/27',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=cXZqfuJ9Zps",
      progression: 0
  ),
  Game(
      id: 'ga10',
      title: 'PokemonX and Y',
      images: ['assets/img/games/pokemonYX/xerneas.jpeg', 'assets/img/games/pokemonYX/pokemon-xy.jpg'],
      platforms: [ 'p8' ],
      genres: [ 'g1' ],
      publisher: 'e2',
      description: "Pokémon X and Pokémon Y are 2013 role-playing video games developed by Game Freak, published by The Pokémon Company and Nintendo for the Nintendo 3DS. They are the first installments in the sixth generation of the main Pokémon video game series.",
      releaseDate: '2013/10/12',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=WNr6wQfNfK4&ab_channel=GameNews",
      progression: 0
  ),
  Game(
      id: 'ga11',
      title: 'The legend of Zelda: Wind Waker',
      images: ['assets/img/games/zeldaWindWaker/the-legend-of-zelda-the-wind-waker-cover.jpg', 'assets/img/games/zeldaWindWaker/The-Legend-of-Zelda-Wind-Waker-HD-Wallpapers.jpg'],
      platforms: [ 'p3', 'p9' ],
      genres: [ 'g3', 'g4' ],
      publisher: 'e2',
      description: "The Legend of Zelda: The Wind Waker is an action-adventure game developed and published by Nintendo for the GameCube home video game console. The tenth installment in The Legend of Zelda series, it was released in Japan in December 2002, in North America in March 2003, and in Europe in May 2003. The game is set on a group of islands in a vast sea, a departure for the series. The player controls series protagonist Link as he attempts to save his sister from the sorcerer Ganon and becomes embroiled in a struggle for the Triforce, a sacred wish-granting relic. Aided by allies including pirate captain Tetra – an incarnation of Princess Zelda – and a talking boat named the King of Red Lions, Link sails the ocean, explores islands, and traverses dungeons to acquire the power necessary to defeat Ganon. Wind, which facilitates sailing, plays a prominent role and can be controlled with a magic conductor's baton called the Wind Waker.",
      releaseDate: '2002/12/13',
      isFavorite: true,
      videoUrl: "https://www.youtube.com/watch?v=IkVt1s_ZFbw&ab_channel=Nintendo",
      progression: 0
  ),
  Game(
      id: 'ga12',
      title: 'Bravely Default II',
      images: ['assets/img/games/bravelyDefault2/image.jpg', 'assets/img/games/bravelyDefault2/Switch_BravelyDefault2_.jpg'],
      platforms: [ 'p4' ],
      genres: [ 'g1' ],
      publisher: 'e2',
      description: "Bravely Default II is an upcoming role-playing video game developed by Claytechworks and published by Square Enix in Japan, with Nintendo handling the release in the Western territories for the Nintendo Switch. It is scheduled for release worldwide in 2020.",
      releaseDate: '2020',
      isFavorite: false,
      videoUrl: "https://www.youtube.com/watch?v=DsjTKIt3z8A&ab_channel=Nintendo",
      progression: 0
  )

];
