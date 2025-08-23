import 'package:campus_helper/Style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Skill_details.dart';

class skillShare extends StatefulWidget {
  const skillShare({super.key});

  @override
  State<skillShare> createState() => _skillPortionState();
}

class _skillPortionState extends State<skillShare> {
  List skillList = [
    {
      "Name": "Dr.MD.Fahim Muntasir",
      "Position":"Research Director",
      "Topic":"Artificial Intelligence",
      "Image":"assets/images/fahim.jpg",
      "Department":"PhD Candidate",
      "Skill":"Machine Learning",
      "Logo":"assets/images/noto_robot.png",
      "Services":"Advance  machine  learning\nAlgorithms and Ai applications",
      "Linkedin":"https://www.linkedin.com/in/fahimmunatsir1488?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
      "Phone": " 01882080057",
      "email":"mdfahimuntasir1488.csenub@gmail.com"
    },
    {
      "Name": "Md. Salauddin Rony",
      "Position":"Research Director",
      "Topic":"Application testiong",
      "Image":"assets/images/rony.jpg",
      "Department":"BsC -6th semester",
      "Skill":"Flutter",
      "Logo":"assets/images/flutter.png",
      "Services":"Build fast,beautiful and native apps for Android and iOS",
      "Linkedin":"https://www.linkedin.com/in/salauddin-rony?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
      "Phone": "01313125522",
      "email":"mdsalauddinrony1486.csenub@gmail.com"
    },
    {
      "Name": "Mst. Sonia Akter",
      "Position":"Figma Expart",
      "Topic":"Figma Designing",
      "Image":"assets/images/sonia.jpg",
      "Department":"BsC -9th semester",
      "Skill":"Ui-Ux design",
      "Logo":"assets/images/uiux.png",
      "Services":"Exclusive design for App and Web for various Screen",
      "Linkedin":"https://www.linkedin.com/in/salauddin-rony?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
      "Phone": "01313125522",
      "email":"mdsalauddinrony1486.csenub@gmail.com"
    },
    {
      "Name": "Md. Murad Hossen",
      "Position":"Research Director",
      "Topic":"Web Building",
      "Image":"assets/images/murad.jpg",
      "Department":"BsC -7th semester",
      "Skill":"Web Development",
      "Logo":"assets/images/web.png",
      "Services":"Design and building responsive website and Web App",
    "Linkedin":"https://www.linkedin.com/in/muradhossain1489?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BLuyZsX%2B3Rgmh1drOZYAPBg%3D%3D",
    "Phone": "01829169560",
    "email":"mdmurad1489.csenub@gmail.com"
    },
    {
      "Name": "Mohammad Ali",
      "Position":"Research Director",
      "Topic":"Cyber Security Analysis",
      "Image":"assets/images/mohammad.jpg",
      "Department":"BsC -9th semester",
      "Skill":"Cyber Security",
      "Logo":"assets/images/cyber.png",
      "Services":"Protect Information From bad person",
      "Linkedin":"https://www.linkedin.com/in/mohammad-ali-7a0661334?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
      "Phone": "01521762779",
      "email":"mohammadali.ch9007@gmail.com"

    },
    {
      "Name": "Md Sakib Hossen",
      "Position":"Research Director",
      "Topic":"Data Analysis",
      "Image":"assets/images/sakib.jpg",
      "Department":"BsC -9th semester",
      "Skill":"Data Science",
      "Logo":"assets/images/data.png",
      "Services":"Analysis Data and make use for ML",
      "Linkedin":"https://www.linkedin.com/in/md-shakib-hosen-9a35912a9?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
      "Phone": "01770679972",
      "email":"mdshakibhosen1508.csenub@gmail.com"
    },
  ];
  List filterList = [];
  @override
  void initState() {
    super.initState();
    filterList = skillList;
  }

  void filterSearch(String query) {
    List tempList = [];
    if (query.isNotEmpty) {
      tempList =
          skillList.where((item) {
            String bloodGroup = item["Skill"].toString().toLowerCase();
            return bloodGroup.contains(query.toLowerCase());
          }).toList();
    } else {
      tempList =skillList;
    }
    setState(() {
      filterList = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 210,
            width: 430,
            color:colorPink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text(
                  "CampusBond",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(height: 7),
                Text(
                  "Connect with skilled peers in your Univeristy.Find\n   mentors,collaborators and learn together.",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 7),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) =>
                        skillDetails(fixedData: filterList[1],
                          skillData: filterList,)));
                  },
                  child: Container(
                    height: 53,
                    width: 314,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.group, color: Colors.white),
                        SizedBox(width: 10),
                        Text("Browse All Experts",style:textStyle(colorWhite,weight6,18.0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: TextField(
              onChanged: (value) {
                filterSearch(value);
              },
              decoration: InputDecoration(
                hintText: "Search Skills, technologies or subject",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  Color bgColor =
                  (index % 2 == 0)
                      ? colorLightBlue
                      : colorLightGreen;

                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15),
                    child:GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder:
                            (context)=>skillDetails(fixedData:filterList[index],
                          skillData: filterList,)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: bgColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star_border_sharp),
                                  SizedBox(width: 10,),
                                  Text("Technology",style: textStyle(colorBlack,weight4,16.0))
                                ],
                              ),
                              Text(filterList[index]["Skill"],style: textStyle(colorBlack,weight6,20.0),),
                              Text( filterList[index]["Services"],style: textStyle(colorBlack,weight4,13.0),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text("Find and Experts",style: textStyle(colorRed,weight4,11.0),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.arrow_forward,size: 11,color: colorRed,),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
