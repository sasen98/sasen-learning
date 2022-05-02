import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/Theme/theme.dart';
import 'package:flutter_app/models/carousel_model.dart';
import 'package:flutter_app/widgets/theme_switch_widget.dart';
import 'package:provider/provider.dart';

import 'noticeboard_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  List<ImageName> imageNameList =[

    const   ImageName(image: 'https://images.freeimages.com/images/large-previews/4d6/chugh-1171409.jpg', name: 'Hrllo'),
    const   ImageName(image: 'https://images.freeimages.com/images/large-previews/4d6/chugh-1171409.jpg', name: 'Hllo'),
    const   ImageName(image: 'https://images.freeimages.com/images/large-previews/4d6/chugh-1171409.jpg', name: 'Hrl'),

  ] ;




  // final iconTheme = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
  //     ? Icon(Icons.abc,color: Colors.black,)
  //     : Icon(Icons.abc,color: Colors.white,);
  @override
  Widget build(BuildContext context) {
    final iconTheme = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(actions: const [  ThemeSwitchWidget()]),
        body: SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(height: 250,autoPlay: true),
                items: imageNameList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Image.network(i.image??''),
                                Text(i.name??''),
                              ],
                            ),
                        ),
                      );
                    },
                  );
                }).toList(),

              ),
              // CarouselSlider.builder(
              //   itemCount: topImage.length,
              //   itemBuilder: (context, index, pageIndex) {
              //     final urlImage = topImage[index];
              //     return buildImage(urlImage, index);
              //   },
              //   options: CarouselOptions(height: 250, autoPlay: true),
              // ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('NoticeBoard',),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert) )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                 height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(itemCount: 3,
                  itemBuilder: (context, index) {
                  return const NoticeBoardWidget(
                    heading: 'Heading',
                    body: 'body of the notice jakhfskjdhaskfaskdhjaksh asfdjhasjk hakshf  sdfasfasfasfasfsffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
                    imageUrl: 'https://images.freeimages.com/images/large-previews/d8a/perfect-blue-buildings-2-1235862.jpg',
                  );

                },),),
              ),

              ],),
        ),
      ),)
    );

  }
}
