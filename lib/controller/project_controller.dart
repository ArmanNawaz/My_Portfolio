import 'package:portfolio_new/models/project_model.dart';

class ProjectController {
  List<ProjectModel> allProjects = [
    ProjectModel(
      projectName: "Covid-19 Tracker App",
      projectDesc: """
      - Flutter Application
      - Separate Screens for country and global data
      - Shows daily and total data
      - Data gets updated every 10-15 minutes
      - Api used - diseases.sh
        """,
      dateTime: "February 2021",
      image: "assets/images/covid-19tracker.png",
      link: "https://github.com/ArmanNawaz/covid_19_live_tracker",
    ),
    ProjectModel(
      projectName: "BT Attendance",
      projectDesc: """
        - Bluetooth based attendance monitoring system
        - Students must have a bluetooth enabled mobile phone
        - Students are identified based on their bluetooth MAC Address
        - Takes only 15-20 seconds to mark the attendance
        - All the data gets stored in database
        """,
      dateTime: "Aug 2022 - October 2022",
      image: "assets/images/bt_attendance.png",
      link: "https://github.com/ArmanNawaz/BTAttendance",
    ),
    ProjectModel(
      projectName: "Mi Crators Billing App",
      projectDesc: """
        - Operator authentication with username password an POS_ID
        - Transaction History
        - Customer Registration for new customer
        - Email Bill to the customer
        - Email end of stock to the vendor
        """,
      dateTime: "September 2022",
      image: "assets/images/mi_crators.png",
      link: "https://github.com/ArmanNawaz/MiCrators-MI-Billing-App",
    ),
    ProjectModel(
      projectName: "Blockchain Secured Pension System",
      projectDesc: """
        - Save the pension data in the blockchain
        - Provide ECC encryption algorithm and CIA properties
        - Frontend using Flutter
        - Contracts using Solidity
        - Middleware - web3dart
        """,
      dateTime: "Ongoing",
      image: "assets/images/blockchain_pension.jpg",
      link:
          "https://github.com/ArmanNawaz/Blockchain-Secured-Pension-System/tree/main",
    )
  ];
}
