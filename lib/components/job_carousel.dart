import 'package:curso_job_finder_app/components/item_job.dart';
import 'package:curso_job_finder_app/models/job.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JobCarousel extends StatelessWidget {
  List<Job> jobs;

  JobCarousel({this.jobs});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 230.0,
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 1),
        //enlargeCenterPage: true,
        //enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: this
          .jobs
          .map((element) => ItemJob(
                job: element,
                themeDark: jobs.indexOf(element) == 0,
              ))
          .toList(),
    );
  }
}
