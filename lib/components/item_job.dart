import 'dart:ui';
import 'package:curso_job_finder_app/models/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemJob extends StatefulWidget {
  Job job;
  bool themeDark;

  ItemJob({this.job, this.themeDark = false});

  @override
  _ItemJobState createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Flexible(
          child: Padding(
            padding: EdgeInsets.only(
                left: 25.0, top: 20.0, right: 25.0, bottom: 15.0),
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
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color:
          this.widget.themeDark ? Theme.of(context).primaryColor : Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      boxShadow: [
        BoxShadow(
          color: Colors.indigo.shade900.withAlpha(60),
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
          this.widget.job.company.urlLogo,
          width: 60.0,
        ),
      ),
    );
  }

  Widget _favicon() {
    return GestureDetector(
      child: Icon(
        this.widget.job.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: this.widget.themeDark ? Colors.white : Colors.grey,
      ),
      onTap: () {
        setState(() {
          this.widget.job.isFavorite = !this.widget.job.isFavorite;
        });
      },
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.widget.job.company.name,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          this.widget.job.role,
          style: this.widget.themeDark
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
              this.widget.job.location,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ],
    );
  }
}
