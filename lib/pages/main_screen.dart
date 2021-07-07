import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          _customAppBar(),
          _textHeader(context),
        ],
      )),
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
    return Column(
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
    );
  }
}
