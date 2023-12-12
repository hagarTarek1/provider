import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'classes/carouselDetails.dart';
import 'models/categoryModel.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey[300],
            body:
                ListView(
                  children: [
                Consumer<List<Ads>?>(
                builder: (ctx,datavalue,_) { return
                  CarouselSlider.builder(itemCount: datavalue?.length ?? 0,
                  itemBuilder: (context,itemIndex, realIndex){
                return CarouselDetail(ads:
                datavalue?[itemIndex]
                );


              }
                , options: CarouselOptions(
                viewportFraction: 1
                ,
                autoPlayAnimationDuration: const Duration(milliseconds: 100),
                autoPlay: true,
                enlargeCenterPage: true,
                ),
                );
                  },)])
            );
  }
}
