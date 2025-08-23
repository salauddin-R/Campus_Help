import 'package:campus_helper/SafeAlert.dart';
import 'package:flutter/material.dart';
import 'package:campus_helper/ComplainBox.dart';
import 'Blood/BloodPortion.dart';
import 'Style/Style.dart';
import 'suggestion.dart';
import 'StudyResources.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        '/SafeAlert':(context)=>SafeAlert(),
        '/ComplainBox':(context)=>complainBox(),
        '/suggestion':(context)=>SuggestionBox(),
        '/StudyResources':(context)=>StudyResources(),
        '/BloodPortion':(context)=>BloodPortion(),
      },
    );
  }

}
class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  MyScafold(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: colorPink,
          title: Column(
            children: [
              Text("CAMPUS-BOND",style:textStyle(colorWhite,weight6,24.0)),
              Text("Connect.Learn.Safe",style: textStyle(colorWhite,weight4,12.0),)
            ],
          ),
          actions: [
            Icon(Icons.notifications,color: colorWhite,size: 30),
            SizedBox(width: 14,),
            Icon(Icons.settings,color: colorWhite,size: 30),
            SizedBox(width: 20,),
          ],
        ),


        body: Padding(
          padding:EdgeInsets.only(right: 23,left: 27,top:5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 212,
                width: 370,

                decoration: BoxDecoration(
                    color:colorRed,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 22,top: 10,left: 30,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 35,
                        child: Column(
                          children: [
                            Text("   Safe Alert",style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w900,fontSize: 25
                            ),),
                            Row(
                              children: [
                                Container(
                                   height: 41,
                                     width: 41,

                                       decoration: BoxDecoration(
                                          color:colorDarkWhite,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.verified_user),
                                ),
                                SizedBox(width: 5,),
                                Text("Emergency\nassistance ready",
                                style:textStyle(colorWhite,weight4,14.0) ,),
                              ],
                            ),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                               CircleAvatar(
                          backgroundColor: colorgreen,
                          radius: 5,
                        ),
                        SizedBox(width: 5,),
                                Text("Campus Security Online",
                                style:textStyle(colorWhite,weight4,14.0) ,),
                              ],
                            ),
                            Row(
                              children: [
                               CircleAvatar(
                          backgroundColor: colorLime,
                          radius: 5,
                        ),
                        SizedBox(width: 5,),
                                Text("Emergency Services Active",
                                style:textStyle(colorWhite,weight4,14.0) ,),
                              ],
                            ),
                            SizedBox(height: 12,),
                            ElevatedButton(onPressed:(){
                              Navigator.pushNamed(context,'/SafeAlert');
                              //MyScafold(context,"This is Panic Button");
                            },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor:colorPora,
                                  minimumSize: Size(50, 25)
                              ) ,
                              child: Text("  Panic\n  Button",style: TextStyle(color:colorBlack,
                        
                                  fontWeight: FontWeight.w900,fontSize: 16
                              ),),)
                        
                        
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: CircleAvatar(
                          backgroundColor: colorPora,
                          radius: 25,
                          child: Icon(Icons.warning_amber_sharp,color: colorBlack,size: 34,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height:5,),
              Row( 
                children: [
                  Expanded(
                    flex: 80,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Event Hub",style: textStyle(colorBlack,weight6,15.0),),
                        Text("  Stay updated with campus happenings",style:textStyle(colorBlack,weight4,13.0))
                      ],
                    )
                    ),
                  Expanded(
                    flex: 20,
                    child:SizedBox(height: 15,width: 15,child: 
                    Icon(Icons.email_rounded,color: colorPink,),)
                    ),
                ],
              ),
              SizedBox(height:5,),

            Container(
              height: 137,
              width: 362,
              decoration: BoxDecoration(
                  color:colorWhiteLight,
                  borderRadius: BorderRadius.circular(20),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,),
             Container(
              height: 27,
              width: 204,
              decoration: BoxDecoration(
                  color:colorBaguni,
                  borderRadius: BorderRadius.circular(20),),
                  child:Center(child: Text("Technology",style:textStyle(colorBlack,weight6,17.0) ,))
                  ),
                  SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                  color:colorWhiteLight,
                  borderRadius: BorderRadius.circular(5),), 
                  child: Image.asset("assets/images/dark.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 10,),
                          Text("Join us for the annual Tech Expo \nshowcasing student projects and innovation",
                          style:textStyle(colorBlack,weight4,12.0),)
                        ],
                      ),
                                            Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.alarm),
                          Text("  Tomorrow,5pm",
                          style:textStyle(colorBlack,weight4,10.0),),
                          SizedBox(width: 55,),
                          Icon(Icons.group),
                          Text("  300+ registered",
                          style:textStyle(colorBlack,weight4,10.0),),
                        ],
                      ),
                      Text("Learn more....",
                          style:textStyle(Color(0xFF5C4FFD),weight4,10.0),),
 
                    ],
                  ),
                  ),
                  SizedBox(height:5,),
            Container(
              height: 137,
              width: 362,
              decoration: BoxDecoration(
                  color:colorWhiteLight,
                  borderRadius: BorderRadius.circular(20),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,),
             Container(
              height: 27,
              width: 204,
              decoration: BoxDecoration(
                  color:colorBaguni,
                  borderRadius: BorderRadius.circular(20),),
                  child:Center(child: Text("Technology",style:textStyle(colorBlack,weight6,17.0) ,))
                  ),
                  SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                  color:colorWhiteLight,
                  borderRadius: BorderRadius.circular(5),), 
                  child: Image.asset("assets/images/light.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 10,),
                          Text("Join us for the annual Tech Expo \nshowcasing student projects and innovation",
                          style:textStyle(colorBlack,weight4,12.0),)
                        ],
                      ),
                                            Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.alarm),
                          Text("  Tomorrow,5pm",
                          style:textStyle(colorBlack,weight4,10.0),),
                          SizedBox(width: 55,),
                          Icon(Icons.group),
                          Text("  300+ registered",
                          style:textStyle(colorBlack,weight4,10.0),),
                        ],
                      ),
                      Text("Learn more....",
                          style:textStyle(Color(0xFF5C4FFD),weight4,10.0),),
 
                    ],
                  ),
                  ),
  
             SizedBox(height:5,),
             
             Container(
              height: 35,
              width: 362,
              decoration: BoxDecoration(
                  color:colorPink,
                  borderRadius: BorderRadius.circular(20),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month,color: colorBlack,),
                      SizedBox(width: 10,),
                      Text("View All Events",style:textStyle(colorWhite,weight6,17.0),)
                    ],
                  ),
                  ),
 
              SizedBox(height:5,),
              Text("   Quick Access",style: textStyle(colorBlack,weight6,15.0)),
              SizedBox(height: 5,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                     Navigator.pushNamed(context, '/StudyResources');
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.menu_book,color:Colors.deepPurple,),
                              Text("    Study\n Resources",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                         )),
                  GestureDetector(
                      onTap: () {
                      print("Campus Guide tapped");
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.psychology,color:colorPink,),
                              Text("Skill Share",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                         )),
                    GestureDetector(
                      onTap: () {
                      Navigator.pushNamed(context, '/BloodPortion');
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.favorite,color:colorRed,),
                              Text("Blood Group\n      Finder",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                         )),
                ],
              ),
          SizedBox(height: 5,),

           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                      print("Campus Guide tapped");
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.dashboard_customize,color:colorPink,),
                              Text(" Teachers\n   Panel",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                        )),
                    GestureDetector(
                      onTap: () {
                      print("Campus Guide tapped");
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.link,color:colorPora,),
                              Text("Connect with\n    Seniors",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                       ) ),
                GestureDetector(
                      onTap: () {
                      print("Campus Guide tapped");
                       },  
                   child:Container(
                    width: 80,
                    height: 66,
                    decoration: BoxDecoration(
                      color: colorWhiteLight,
                  borderRadius: BorderRadius.circular(15),
                           ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on,color:Colors.green,),
                              Text("  Campus\n    Guide",style: textStyle(colorBlack,weight4,13.0)),
                            ],
                          )
                           ),),
                ],
              ),
            ],
          ),

        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor:colorDarkWhite,
          selectedItemColor: colorgreen,
          unselectedItemColor: colorBlack,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.safety_check),label: "Safety"),
            BottomNavigationBarItem(icon: Icon(Icons.group_outlined),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (index){
            if(index==0){

            }
            else if(index==1){
              Navigator.pushNamed(context,'/SafeAlert');

            }
            else if(index==2)
            {
              MyScafold(context,"Community");
            }
            else{
              MyScafold(context,"This is people");
            }
          },
        )
    );
  }

}