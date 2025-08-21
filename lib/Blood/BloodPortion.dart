import 'package:campus_helper/Style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BloodgruopDetails.dart';

class BloodPortion extends StatefulWidget {
  const BloodPortion({super.key});

  @override
  State<BloodPortion> createState() => _BloodPortionState();
}

class _BloodPortionState extends State<BloodPortion> {
  List bloodList=
  [
    {"Name":"Salauddin",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A+",
      "Last Blood Donated":"12th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Sakib",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A+",
      "Last Blood Donated":"12th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Jihad",
      "Department":"Textile",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"B+",
      "Last Blood Donated":"10th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Biddut",
      "Department":"BBA",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"AB+",
      "Last Blood Donated":"2th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Rony",
      "Department":"EEE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"O+",
      "Last Blood Donated":"12th June",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Fahim",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A-",
      "Last Blood Donated":"1th December",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Murad",
      "Department":"ELL",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"B-",
      "Last Blood Donated":"2th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Muhammad",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"O-",
      "Last Blood Donated":"21th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Sonia",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A+",
      "Last Blood Donated":"29th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Suhail",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"AB+",
      "Last Blood Donated":"12th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Ratul",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"B+",
      "Last Blood Donated":"12th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Mim",
      "Department":"ECSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A-",
      "Last Blood Donated":"12th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Kajol",
      "Department":"Bangla",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A+",
      "Last Blood Donated":"3th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Hider",
      "Department":"ELL",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"A+",
      "Last Blood Donated":"9th February",
      "Phone":"01234xxxxxx"

    },
    {"Name":"Murad",
      "Department":"BBA",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"B+",
      "Last Blood Donated":"4th February",
      "Phone":"0123445743"

    },
    {"Name":"Himel",
      "Department":"CSE",
      "Availability":"Yes",
      "Semester":"6th",
      "Blood Group":"O+",
      "Last Blood Donated":"5th February",
      "Phone":"01234xxxxxx"

    },
  ];
  List filterList = [];
  @override
  void initState() {
    super.initState();
    filterList=bloodList;
  }



  void filterSearch(String query) {
    List tempList = [];
    if(query.isNotEmpty){
      tempList = bloodList.where((item){
        String bloodGroup = item["Blood Group"].toString().toLowerCase();
        return bloodGroup.contains(query.toLowerCase());
      }).toList();
    } else {
      tempList = bloodList;
    }
    setState(() {
      filterList = tempList;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Blood Group List",style: TextStyle(color:
          Colors.black,fontWeight: FontWeight.w900,fontSize: 32),),
        ),
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: 371,
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),topRight: Radius.circular(15),
                    ),
                    color:colorgreen
                ),
                child: Center(child: Text("Find Blood Group",style: textStyle(colorWhite,weight6,25.9),)),
              ),
              Container(
                width: 370,
                height: 570,
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value){
                          filterSearch(value);
                        },
                        decoration: InputDecoration(
                          hintText: "Search Blood Group",
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                          itemCount:filterList.length,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: Text(filterList[index]["Name"],style: textStyle(colorBlack,weight6,20.9),),
                              subtitle: Text("Blood Group:"+filterList[index]["Blood Group"],style: textStyle(colorBlack,weight4,16.9),),
                              trailing: IconButton(onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                    builder:(context)=>BloodgruopDetails(bloodData:filterList[index])));
                              }, icon: Icon(Icons.arrow_forward)),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){},
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  child:Text("Add Your Blood",style:TextStyle(color: Colors.white),)
              )
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:colorgreen,
          selectedItemColor:colorCyan,
          unselectedItemColor:colorWhite,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.safety_check),label: "Safety"),
            BottomNavigationBarItem(icon: Icon(Icons.group_outlined),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (index){
            if(index==0){
              Navigator.pushNamed(context,'/');
            }
            else if(index==1){
              Navigator.pushNamed(context,'/SafeAlert');
            }
            else if(index==2)
            {

            }
            else{

            }
          },
        )
    );
  }
}



