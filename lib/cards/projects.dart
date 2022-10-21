import 'package:flutter/material.dart';
import 'package:portfolio_new/controller/project_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  Projects({Key? key}) : super(key: key);
  ProjectController projectController = ProjectController();

  void gotoLink(String link) {
    Uri uri = Uri.parse(link);
    launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Projects",
                style: TextStyle(fontSize: 25),
              ),
            ),
            findAllProjects()
          ],
        ),
      ),
    );
  }

  Widget findAllProjects() {
    List<Widget> allProjectsList = [];

    for (var projects in projectController.allProjects) {
      var eachProject = Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 10,
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Tooltip(
                    message: "Click to view project",
                    child: MaterialButton(
                      onPressed: () {
                        gotoLink(projects.link);
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(projects.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  projects.projectName,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 15),
                Text(projects.projectDesc),
                const SizedBox(height: 15),
                Text(projects.dateTime),
              ],
            ),
          ),
        ),
      );
      allProjectsList.add(eachProject);
    }
    return SizedBox(
      height: 430,
      child:
          ListView(scrollDirection: Axis.horizontal, children: allProjectsList),
    );
  }
}
