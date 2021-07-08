import 'package:curso_job_finder_app/components/job_carousel.dart';
import 'package:curso_job_finder_app/models/company.dart';
import 'package:curso_job_finder_app/models/job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  List<Job> forYouJobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
    ),
    Job(
      role: 'Frontend Web',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
            'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
            'https://www.cbc-network.org/wp-content/uploads/2017/11/Amazon-icon.png',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _customAppBar(),
            _textHeader(context),
            _forYou(context),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          Row(
            children: [
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset("assets/icons/search.svg"),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset("assets/icons/settings.svg"),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Jade",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "Find your next",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "design job",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  Widget _forYou(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            "For you",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        JobCarousel(jobs: forYouJobs),
      ],
    );
  }
}
