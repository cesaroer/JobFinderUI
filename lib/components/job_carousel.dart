import 'package:curso_job_finder_app/components/item_job.dart';
import 'package:curso_job_finder_app/models/job.dart';
import 'package:flutter/cupertino.dart';
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
          .map(
            (element) => _setContextMenuTo(
              context,
              ItemJob(
                job: element,
                themeDark: jobs.indexOf(element) == 0,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _setContextMenuTo(context, Widget widget) {
    return CupertinoContextMenu(
      actions: [
        CupertinoContextMenuAction(
          child: Text("action one"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoContextMenuAction(
          child: Text("action two"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      child: widget,
    );
  }
}
