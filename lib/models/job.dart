import 'package:curso_job_finder_app/models/company.dart';

class Job {
  String location;
  String role;
  Company company;
  bool isFavorite;

  Job({this.location, this.role, this.company, this.isFavorite = false});
}
