import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Biodata Diri';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        backgroundColor: Color.fromARGB(255, 7, 247, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/faisal.jpeg'), 
              TitleSection(
                name: 'FAISAL RAHMAN HIKMATIAR', 
                location: 'CIAMIS, JAWA BARAT, INDONESIA', 
              ),
              TextSection(description:'''
Nama: FAISAL RAHMAN HIKMATIAR
Tempat, Tanggal Lahir: CIAMIS, 29 MEI 2003
Jenis Kelamin: LAKI LAKI
Agama: Islam
Alamat: CIAMIS, JAWA BARAT, INDONESIA
Email: faisalrahmanhikmatiar@gmail.com
Hobi: Main Game
Kewarganegaraan: Indonesia

"POWER CONTROL EVERYTHING"
'''),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '© FAISAL RAHMAN HIKMATIAR - STI202102351',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              const Text('5,0'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(
                Icons.tiktok,
                color: const Color.fromARGB(255, 19, 13, 15),
              ),
              SizedBox(width: 8),
              Text(
                'hfaisalrahman__',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(width: 8),
              Text(
                'Faisal Rahman',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(width: 8),
              Text(
                '150k',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          description,
          softWrap: true,
          textAlign: TextAlign.left, // Text alignment to left
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87, // Set text color to black
            fontWeight: FontWeight.w600, // Set text weight to bold
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}