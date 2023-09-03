import 'package:equatable/equatable.dart';

//The following contains the information for the Articles part of the application
class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Aditya-L1',
      subtitle: '2 September 2023 - 12 November 2028',
      body:
          'Aditya-L1 is the first Indian observatory class mission to study the solar corona using a solar coronagraph and also chromosphere using near UV instrument. X-ray spectroscopic instruments will provide flare spectra while the in-situ payload observes the solar events during their passage from Sun to Earth. Aditya L1 solar mission: India took its first step towards the completion of its Solar mission. \nAditya L1 launched successfully from Sriharikota on Saturday. Four months from now, the spacecraft will be successfully placed on its Halo orbit, L1, near the Sun. Soon after that, its seven payloads will come into action to find out answers to some of the most intriguing questions about the Sun.\n\n The major science objectives of Aditya-L1 mission are:\nStudy of Solar upper atmospheric (chromosphere and corona) dynamics.\nStudy of chromospheric and coronal heating, physics of the partially ionized plasma, initiation of the coronal mass ejections, and flares\nObserve the in-situ particle and plasma environment providing data for the study of particle dynamics from the Sun.\nPhysics of solar corona and its heating mechanism.\nDiagnostics of the coronal and coronal loops plasma: Temperature, velocity and density.\nDevelopment, dynamics and origin of CMEs.\nIdentify the sequence of processes that occur at multiple layers (chromosphere, base and extended corona) which eventually leads to solar eruptive events.\nMagnetic field topology and magnetic field measurements in the solar corona .\nDrivers for space weather (origin, composition and dynamics of solar wind .',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Solar',
      views: 1204,
      imageUrl: './assets/images/a2.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title: 'Chandrayaan-3',
      subtitle: '14 July 2023 - Expected 8 September 2023 [14 day mission]',
      body:
          'Chandrayaan-3 was launched from the Satish Dhawan Space Centre, Sriharikota on 14 July 2023 at 14:35 IST (UTC +5:30) by LVM3 M4. The main scientific objective is to map the location and abundance of lunar water. It is without orbiter. Chandrayaan-2 orbiter helped Chandrayaan-3. The Chandrayaan-3 successfully landed on moon on 23/08/2023 at 18:05 IST (UTC +5:30).\nChandrayaan-3 is a follow-on mission to Chandrayaan-2 to demonstrate end-to-end capability in safe landing and roving on the lunar surface. It consists of Lander and Rover configuration. It will be launched by LVM3 from SDSC SHAR, Sriharikota. The propulsion module will carry the lander and rover configuration till 100 km lunar orbit. The propulsion module has Spectro-polarimetry of Habitable Planet Earth (SHAPE) payload to study the spectral and Polari metric measurements of Earth from the lunar orbit. \n Lander payloads: Chandra’s Surface Thermophysical Experiment (ChaSTE) to measure the thermal conductivity and temperature; Instrument for Lunar Seismic Activity (ILSA) for measuring the seismicity around the landing site; Langmuir Probe (LP) to estimate the plasma density and its variations. A passive Laser Retroreflector Array from NASA is accommodated for lunar laser ranging studies. \n Rover payloads: Alpha Particle X-ray Spectrometer (APXS) and Laser Induced Breakdown Spectroscope (LIBS) for deriving the elemental composition in the vicinity of landing site.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Lunar',
      views: 1204,
      imageUrl: './assets/images/chandrayaan3.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title: 'Chandrayaan-2',
      subtitle:
          '22 July 2019 - Orbiter functional; the lander crashed onto Moon surface due to loss of control (caused by a software glitch) during the final phase of descent',
      body:
          'Chandrayaan-2 was launched from the second launch pad at Satish Dhawan Space Centre on 22 July 2019 at 2.43 PM IST (09:13 UTC) to the Moon by a LVM3 (previously known as GSLV Mk III). The planned orbit has a perigee of 169.7 km and an apogee of 45475 km. It consists of a lunar orbiter, lander and rover, all developed in India. The main scientific objective is to map the location and abundance of lunar water.Chandrayaan-2 mission is a highly complex mission, which represents a significant technological leap compared to the previous missions of ISRO. It comprised an Orbiter, Lander and Rover to explore the unexplored South Pole of the Moon. The mission is designed to expand the lunar scientific knowledge through detailed study of topography, seismography, mineral identification and distribution, surface chemical composition, thermo-physical characteristics of top soil and composition of the tenuous lunar atmosphere, leading to a new understanding of the origin and evolution of the Moon AstroSat is the first dedicated Indian astronomy mission aimed at studying celestial sources in X-ray, optical and UV spectral bands simultaneously. The payloads cover the energy bands of Ultraviolet (Near and Far), limited optical and X-ray regime (0.3 keV to 100keV). One of the unique features of AstroSat mission is that it enables the simultaneous multi-wavelength observations of various astronomical objects with a single satellite. \n AstroSat with a lift-off mass of 1515 kg was launched on September 28, 2015 into a 650 km orbit inclined at an angle of 6 deg to the equator by PSLV-C30 from Satish Dhawan Space Centre, Sriharikota. The minimum useful life of the AstroSat mission is expected to be 5 years.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Politics',
      views: 1204,
      imageUrl: './assets/images/chandrayaan2_3.webp',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Mars Orbiter Mission',
      subtitle: '5 November 2013 - 2 October 2022',
      body:
          'Mars Orbiter Mission (MOM), also called Mangalyaan, is a spacecraft orbiting Mars since 24 September 2014. It was launched on 5 November 2013 by the Indian Space Research Organization (ISRO). It is Indias first interplanetary spaceflight mission and ISRO has become the fourth space agency to reach Mars, after the Soviet space program, NASA, and the European Space Agency. India is the first Asian nation to reach Mars orbit, and the first nation in the world to do so in its first attempt.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Interplanetary',
      views: 1204,
      imageUrl: './assets/images/mars1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title: 'Chandrayaan-1',
      subtitle: '22 October 2008 - 28 August 2009',
      body:
          'Chandrayaan 1 as Indias first lunar probe. It was launched by the Indian Space Research Organisation on 22 October 2008, and was operated until August 2009. The mission included a lunar orbiter and an impactor. The mission was a major boost to Indias space program, as India researched and developed its own technology in order to explore the Moon. The vehicle was successfully inserted into lunar orbit on 8 November 2008. Chandrayaan-1, Indias first mission to Moon, was launched successfully on October 22, 2008 from SDSC SHAR, Sriharikota. The spacecraft was orbiting around the Moon at a height of 100 km from the lunar surface for chemical, mineralogical and photo-geologic mapping of the Moon. The spacecraft carried 11 scientific instruments built in India, USA, UK, Germany, Sweden and Bulgaria.\nAfter the successful completion of all the major mission objectives, the orbit has been raised to 200 km during May 2009. The satellite made more than 3400 orbits around the moon and the mission was concluded when the communication with the spacecraft was lost on August 29, 2009.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Lunar',
      views: 1204,
      imageUrl: './assets/images/chandrayaan1_1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '5',
      title: 'ASTROSAT',
      subtitle: '28 September 2015 - Completed in September 2022',
      body:
          'ASTROSAT is the first dedicated Indian Astronomy satellite mission launched by ISRO on 28 September 2015, which enabled multi-wavelength observations of the celestial bodies and cosmic sources in X-ray and UV spectral bands simultaneously. It was in the Suns orbit for 7 years. The scientific payloads cover the Visible (3500–6000 Å...), UV (1300–op Å...), soft and hard X-ray regimes (0.5–8 keV; 3–80 keV). The uniqueness of ASTROSAT lies in its wide spectral coverage extending over visible, UV, soft and hard X-ray regions.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Astronomy',
      views: 1204,
      imageUrl: './assets/images/astrosat.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
