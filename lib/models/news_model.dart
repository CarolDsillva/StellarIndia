import 'package:equatable/equatable.dart';

class News extends Equatable {
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

  const News({
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

  static List<News> news = [
    News(
      id: '1',
      title: 'The launch of Aditya-L1 by PSLV-C57 is accomplished successfully',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Aditya L1 shall be the first space based Indian mission to study the Sun. The spacecraft shall be placed in a halo orbit around the Lagrange point 1 (L1) of the Sun-Earth system, which is about 1.5 million km from the Earth. A satellite placed in the halo orbit around the L1 point has the major advantage of continuously viewing the Sun without any occultation/eclipses. This will provide a greater advantage of observing the solar activities and its effect on space weather in real time. The spacecraft carries seven payloads to observe the photosphere, chromosphere and the outermost layers of the Sun (the corona) using electromagnetic and particle and magnetic field detectors. \nUsing the special vantage point L1, four payloads directly view the Sun and the remaining three payloads carry out in-situ studies of particles and fields at the Lagrange point L1, thus providing important scientific studies of the propagatory effect of solar dynamics in the interplanetary medium. The suits of Aditya L1 payloads are expected to provide most crucial informations to understand the problem of coronal heating, coronal mass ejection, pre-flare and flare activities and their characteristics, dynamics of space weather, propagation of particle and fields etc.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Solar',
      views: 1204,
      imageUrl: './assets/images/a1.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    News(
      id: '2',
      title:
          'Coimbatore students witness launch of Aditya-L1 at science centre',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Students witnessed the launching of Aditya-L1 at the Regional Science Centre in the city on Saturday. The students said it was a proud moment for the nation. Over 190 students of Class IX and above from private schools took part in the initiative by the Tamil Nadu Science and Technology Centre - ‘Flying to the Sun with Aditya-L1’. The centre involved Obuli Chandran, who founded Mango Education, to explain the process to the students. \n\nThe children posed questions such as the type of fuel, fuel content, the reason for distance and choosing this orbit, the duration for making the satellite, the effects of sunspots on earth, the reason for choosing gold as the foil, and how issues of the satellite would be solved. The students also viewed a 3-D show on physics and the 200 exhibits in the viewing gallery — including displays on textiles, history, science and maths — and the innovation hub.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Lunar',
      views: 1204,
      imageUrl: './assets/images/news_1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    News(
      id: '3',
      title:
          'ISRO ‘going to have exciting missions’ in 2023 including GSLV launch says Chairman Somanath',
      subtitle:
          'Somanath provided insights into the future launch campaigns to be taken up by the Bengaluru-headquartered space agency.',
      body:
          'ISRO (Indian Space Research Organisation) has an “exciting" line-up of activities planned over the next few months, including a GSLV (Geosynchronous Satellite Launch Vehicle) launch this year, according to Chairman S Somanath also the Secretary of Department of Space.\nThe agency achieved a precise and successful launch today, placing seven Singaporean satellites into their designated orbits using the reliable Polar Satellite Launch Vehicle (PSLV).',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Politics',
      views: 1204,
      imageUrl: './assets/images/a3.jpeg',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    News(
      id: '4',
      title:
          'ISRO chief shares update on Indias upcoming missions, says ‘After Aditya L1, our next launch is…’',
      subtitle:
          'After Aditya L1, our next launch is Gaganyaan, it will take place by the first week of October.',
      body:
          'Aditya L1 Launch Today: Indias maiden solar mission Aditya-L1 is all set to be launched today i.e. 2 Spetember at 11:50 am from Satish Dhawan Space Centre (SDSC-SHAR) launch pad at Sriharikota in Andhra Pradesh. \nWith the launch rehearsal and vehicle internal checks all being completed, ISRO is now set to launch Indias first solar space observatory Aditya-L1 by the PSLV-C57. It will carry seven different payloads to have a detailed study of the sun, four of which will observe the light from the sun and the other three will measure in-situ parameters of the plasma and magnetic fields. ISROs trusted PSLV will carry the Aditya L1 mission on a 125-day voyage to the Sun.',
      author: 'ISRO',
      authorImageUrl: './assets/images/isro.png',
      category: 'Lunar',
      views: 1204,
      imageUrl: './assets/images/news_2.png',
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
