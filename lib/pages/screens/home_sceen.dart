import 'package:celebrity_online/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:celebrity_online/pages/drower.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List <int> favouritIndices = [];

  List <String> imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC7Kf1dL8eE4inMmERNr5-4lYd6fQ5oHZNTg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1kWqGshcOSvDuZSI9WZ5JejMp3aBPtF9e7w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8UGj5agMJtsFA7pXfeTU0YuzTdvq5KgR19g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPf5U_sLT80S-ZCveFaVMURIX7pGxvWV77CbHK71uULpCogEAD6udFOWzdKZF2prSoTmQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0ZmJ-yorh65P7tzgNddNUEho-7fpFNXPeQA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ-Il4DNBFJQNY_ZQlOvxLEHyKUTXEt2WZvw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzBbKW_Os4mhxqXhHlGJorb3Ta0WDEK_uGmA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTthO9RThiXjkw7hKcoTNzPt9rBdjaW7h_CfQ&usqp=CAU',

  ];

  List <String> names = [
    'Levixone',
    'Fik Fameica',
    'Spice Diana',
    'Golola Moses',
    'Faridah',
    'Liam Voice',
    'Mr Henrie',
    'Mr Henrie'

  ];

  List <String> price = [
    '\$170',
    '\$150',
    '\$170',
    '\$210',
    '\$190',
    '\$110',
    '\$100',
    '\$100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        name: names[index],
                        price: price[index],
                        imageUrl: imageList[index],
                        description:
                            'Book a video call, personalized video/messages, and concert performances',
                      ),
                    ));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(imageList[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        names[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        price[index],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: favouritIndices.contains(index)
                                          ? Icon(Icons.favorite, color: Colors.red)
                                          : Icon(Icons.favorite_border,
                                              color: Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          if (favouritIndices.contains(index)) {
                                            favouritIndices.remove(index);
                                          } else {
                                            favouritIndices.add(index);
                                          }
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}