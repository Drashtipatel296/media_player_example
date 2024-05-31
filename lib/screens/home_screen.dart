import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player_example/provider/slider_provider.dart';
import 'package:provider/provider.dart';
import '../utils/image_list.dart';

final CarouselController controller = CarouselController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search,size: 28,),
        title: const Text('Carousal Slider',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu,size: 28,),
          ),
        ],
      ),
      body: Consumer<SliderProvider>(
        builder: (context, sliderProvider, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: imgList[sliderProvider.current]['color'].cast<Color>(),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imgList.map((item) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Stack(
                            children: [
                              Container(
                                height: 530,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(item['img']),
                                  ),
                                ),
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    item['text'],
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  carouselController: controller,
                  options: CarouselOptions(
                    // autoPlay: true,
                    aspectRatio: 10/16,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      sliderProvider.changeImage(index);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(sliderProvider.current == entry.key
                                  ? 0.9
                                  : 0.4),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
