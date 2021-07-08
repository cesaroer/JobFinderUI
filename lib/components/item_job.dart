import 'dart:ui';
import 'package:curso_job_finder_app/models/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemJob extends StatelessWidget {
  Job job;
  bool themeDark;

  ItemJob({this.job, this.themeDark = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _companyLogo(),
                  _favicon(),
                ],
              ),
              _infoJobTexts(context),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color: this.themeDark ? Theme.of(context).primaryColor : Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(4.0, 2.0),
          blurRadius: 10.0,
        )
      ],
    );
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          this.job.company.urlLogo,
          width: 60.0,
        ),
      ),
    );
  }

  Widget _favicon() {
    return Icon(
      Icons.favorite_border,
      color: this.themeDark ? Colors.white : Colors.grey,
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.job.company.name,
          style: TextStyle(
            fontSize: 15.0,
            color: this.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
          ),
        ),
        Text(
          this.job.role,
          style: this.themeDark
              ? Theme.of(context).textTheme.headline3
              : Theme.of(context).textTheme.headline4,
        ),
        SizedBox(width: 5.0),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 15.0,
            ),
            SizedBox(width: 5.0),
            Text(
              this.job.location,
              style: TextStyle(
                fontSize: 15.0,
                color: this.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
