import 'package:flutter/material.dart';
import 'package:celebrity_online/pages/drower.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  List <String> imageList = [
    'https://ugamusic.ug/storage/image_cover/Ronaldo%20by%20Levixone_1636845786.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpj2tzs8R-_jVaZbaomUij-HOFj70CJVL4oakG1dzCCENHwLKgVx1egNcdZlyN2HH9Eg4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1UUZYDtkPrA2spkc1R5CFy1Yigx-hnJPSjg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmsNxRan0cBsHSp_9xLD5gw7Q4OVJvxICfxw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0ZmJ-yorh65P7tzgNddNUEho-7fpFNXPeQA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_fCyKvlRM88oIhvqNIhIvmMO8v7XhOKleeA&usqp=CAU'
  ];

  // List <String> names = [
  //   'Levixone',
  //   'Fik Fameica',
  //   'Spice Diana',
  //   'Golola Moses Ug',
  //   'Faridah Nakazibwe',
  //   'Mr Henrie'
  // ];

  // List <String> price = [
  //   '\$20',
  //   '\$20',
  //   '\$20',
  //   '\$20',
  //   '\$20',
  //   '\$20',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const NavBar(),
      appBar: AppBar(

        title: const Text('Home'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: imageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder:(context, index){
            return  Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(imageList[index]),
                fit: BoxFit.cover
              ),),

            );
          }),
        ),
      ),
    );
  }
}