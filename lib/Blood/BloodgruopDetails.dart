import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Style/Style.dart';


class BloodgruopDetails extends StatelessWidget {
  final Map bloodData;
  const BloodgruopDetails({super.key, required this.bloodData});

  void _callPhone(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(url)) {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Blood Group Details",style: TextStyle(color:
        Colors.black,fontWeight: FontWeight.w900,fontSize: 32),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 390,
          width: 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorgreen
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("Blood Group:"+bloodData["Blood Group"],style: textStyle(colorWhite,weight6,27.9),),
                SizedBox(height: 20,),
                Text("Name:"+bloodData["Name"],style: textStyle(colorWhite,weight4,20.9),),
                SizedBox(height: 20,),
                Text("Department:"+bloodData["Department"],style: textStyle(colorWhite,weight4,20.9),),
                SizedBox(height: 20,),
                Text("Availability:"+bloodData["Availability"],style: textStyle(colorWhite,weight4,20.9),),
                SizedBox(height: 20,),
                Text("Last Blood Donated:"+bloodData["Last Blood Donated"],style: textStyle(colorWhite,weight4,20.9),),
                SizedBox(height: 20,),
                Text("Phone:"+bloodData["Phone"],style: textStyle(colorWhite,weight4,20.9),),
                SizedBox(height: 20,),
                IconButton(
                  icon: Icon(Icons.call,color: colorWhite,size: 40,),
                  onPressed: () {
                    _callPhone(bloodData["Phone"]);
                  },
                )

              ],
            ),
          ),
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