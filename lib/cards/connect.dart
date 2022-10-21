import 'package:flutter/material.dart';
import 'package:portfolio_new/controller/connnect_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Connect extends StatelessWidget {
  Connect({Key? key}) : super(key: key);
  ConnectController connectController = ConnectController();

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
                "Connect",
                style: TextStyle(fontSize: 25),
              ),
            ),
            allSocials(),
          ],
        ),
      ),
    );
  }

  Widget allSocials() {
    List<Widget> allProjectsList = [];

    for (var social in connectController.allSocials) {
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
                    message: "Click to connect",
                    child: MaterialButton(
                      onPressed: () {
                        gotoLink(social.link);
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(social.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  social.connectName,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      );
      allProjectsList.add(eachProject);
    }
    return SizedBox(
      height: 320,
      child:
          ListView(scrollDirection: Axis.horizontal, children: allProjectsList),
    );
  }
}
