import 'package:equatable/equatable.dart';

// A class representing contact information for various organizations
class Contact extends Equatable {
  final String id; // Unique identifier for the contact information
  final String title; // Title or name of the organization
  final String
      subtitle; // Subtitle or additional details about the organization
  final String
      body; // Full contact information, including address and contact details
  final String author; // Author's name or contact person
  final String authorImageUrl; // URL of the author's image
  final String category; // Category or type of the organization
  final String imageUrl; // URL of an image associated with the organization
  final int views; // Number of views for the contact information
  final DateTime
      createdAt; // Timestamp indicating when the contact information was created

// Constructor to initialize a Contact object
  const Contact({
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

// List of sample contact information for demonstration
  static List<Contact> contact = [
    Contact(
      id: '1',
      title: 'Indian Institute of Space Science and Technology (IIST)',
      subtitle:
          'The Institute has faculty strength of nearly 100 spread across seven Departments. IIST is a residential institution located at Valiamala, approximately 20 km from Thiruvananthapuram city.',
      body:
          'Indian Institute of Space Science and Technology \nValiamala P O, \nThiruvananthapuram - 695547 \n\nContact - director@iist.ac.in',
      author: 'Dr. S Unnikrishnan Nair',
      authorImageUrl: './assets/images/isro.png',
      category: 'Autonomous Bodies',
      views: 1204,
      imageUrl: './assets/images/contact_1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Contact(
      id: '2',
      title: 'National Atmospheric Research Laboratory (NARL)',
      subtitle:
          'National Atmospheric Research Laboratory (NARL) at Gadanki near Tirupati, an autonomous society supported by DOS, is a centre for atmospheric research. NARL is involved in technology development, observations, data archival, dissemination, assimilation and modeling.',
      body:
          'National Atmospheric Research Laboratory \nPB No. 123, SVU Campus, \nTirupathi - 517 502 \nAndhra Pradesh\n\nContact - director@narl.ac.in',
      author: 'Dr. Kanishka Reddy',
      authorImageUrl: './assets/images/isro.png',
      category: 'Autonomous Bodies',
      views: 1204,
      imageUrl: './assets/images/contact_2.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Contact(
      id: '3',
      title: 'North Eastern-Space Applications Centre (NE-SAC)',
      subtitle:
          'North Eastern-Space Applications Centre (NE-SAC), located at Shillong, is a joint initiative of DOS and North Eastern Council (NEC) to provide developmental support to the North Eastern Region (NER) using space science and technology.',
      body:
          'North Eastern Space Applications Centre (NE-SAC)\nUmiam - 793103\nRi Bhoi District,\nMeghalaya, India\n\nContact - director@nesac.ac.in',
      author: 'Dr. S. P. Aggarwal',
      authorImageUrl: './assets/images/isro.png',
      category: 'Autonomous Bodies',
      views: 1204,
      imageUrl: './assets/images/contact_3.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Contact(
      id: '4',
      title: 'Physical Research Laboratory (PRL)',
      subtitle:
          'The Physical Research Laboratory (PRL), Ahmedabad is an autonomous unit of DOS and a premier research institute engaged in basic research in the areas of Astronomy and Astrophysics, Solar Physics, Planetary Science and Exploration, Space and Atmospheric Sciences, Geosciences, Theoretical Physics, Atomic, Molecular and Optical Physics and Astro-chemistry.',
      body:
          'Physical Research Laboratory (PRL)\nNavrangpura\nAhmedabad - 380 009\nGujarat, India\n\nContact - director@prl.ac.in',
      author: 'Dr.Anil Bhardwaj',
      authorImageUrl: './assets/images/isro.png',
      category: 'Autonomous bodies',
      views: 1204,
      imageUrl: './assets/images/contact_4.jpeg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
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
