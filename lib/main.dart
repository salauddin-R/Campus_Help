import 'package:campus_helper/SafeAlert.dart';
import 'package:flutter/material.dart';
import 'package:campus_helper/ComplainBox.dart';
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
          title: Text("CampusBond",style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.w900,fontSize: 30
          ),),
          actions: [
            Icon(Icons.settings,color: Colors.black,size: 30,),
            SizedBox(width: 20,),
          ],
        ),


        body: Padding(
          padding:EdgeInsets.only(right: 25,left: 25,),
          child: Column(
            children: [
              Container(
                height: 84,
                width: 370,

                decoration: BoxDecoration(
                    color: Color(0xFF00695C),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("   Safe Alert",style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w900,fontSize: 25
                        ),),
                        ElevatedButton(onPressed:(){
                          Navigator.pushNamed(context,'/SafeAlert');
                          //MyScafold(context,"This is Panic Button");
                        },
                          style:ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFCDDC39),
                              minimumSize: Size(200, 25)
                          ) ,
                          child: Text("   Panic Button",style: TextStyle(color: Colors.white,

                              fontWeight: FontWeight.w900,fontSize: 16
                          ),),)


                      ],
                    ),
                    Image(image: AssetImage("assets/images/Natification.png"),fit: BoxFit.fill,),
                  ],
                ),
              ),
              // SizedBox(height:5,),
              Text("Notice/Event Board",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w900,fontSize: 25
              ),),
              SizedBox(height:7,),
              Row(
                children: [
                  SizedBox(
                    height:97 ,
                    width: 249,
                    child: Column(
                      children: [
                        Text("Ongoing Campus Event",style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w700,fontSize: 20
                        ),),
                        Text("Join us for the annual Tech Expo \n showcasing student projects and \n innovations.",style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w400,fontSize: 15
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 97,
                    width:110 ,
                    child: Image(image: AssetImage('assets/images/Evemt.png'),fit: BoxFit.fill,),
                  )
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  SizedBox(
                    height:97 ,
                    width: 249,
                    child: Column(
                      children: [
                        Text("Upcomming Campus Event",style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w700,fontSize: 18
                        ),),
                        Text("Join us for the annual Tech Expo \n showcasing student projects and \n innovations.",style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w400,fontSize: 15
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 97,
                    width:110 ,
                    child: Image(image: AssetImage('assets/images/Evemt.png'),fit: BoxFit.fill,),
                  )
                ],
              ),
              SizedBox(height: 5,),
              Text("See more...",style: TextStyle(color: Colors.green,
                  fontWeight: FontWeight.w400,fontSize: 20
              ),),
              SizedBox(height: 5,),
              Container(
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF00695C),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 128,
                      width: 205,
                      child: Column(
                        children: [
                          Text(" Connect With Seniors\n Need Help?",style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w700,fontSize: 16
                          ),),
                          Text("Connect with senior students \n for guidance and support.",style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w400,fontSize: 12
                          ),),
                          ElevatedButton(onPressed: (){},
                            style:ElevatedButton.styleFrom(
                              fixedSize: Size(200,10),backgroundColor: Color(0xFFCDDC39),
                            ) ,
                            child:Text("Post Help Questions",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w700
                            ),),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width:140 ,
                      child: Image(image: AssetImage("assets/images/Sela.png"),fit: BoxFit.fill,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              Text(" Quick Links",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w900,fontSize:20
              ),),
              SizedBox(height: 7,),
              Row(
                children: [
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/StudyResources');
                      },
                        style:ElevatedButton.styleFrom(
                          fixedSize: Size(180,25),backgroundColor: Color(0xFFCDDC39),
                        ) ,
                        child:Row(
                          children: [
                            Icon(Icons.book_sharp),
                            Text("Study resources",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),),
                      ElevatedButton(onPressed: (){},
                        style:ElevatedButton.styleFrom(
                          fixedSize: Size(180,25),backgroundColor: Color(0xFFCDDC39),
                        ) ,
                        child:Row(
                          children: [
                            Icon(Icons.bloodtype),
                            Text("Blood Group Finder",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w700,fontSize: 12
                            ),),
                          ],
                        ),),
                    ],
                  ),

                  Column(
                    children: [
                      ElevatedButton(onPressed: (){},
                        style:ElevatedButton.styleFrom(
                          fixedSize: Size(180,25),backgroundColor: Color(0xFFCDDC39),
                        ) ,
                        child:Row(
                          children: [
                            Icon(Icons.location_on_sharp),
                            Text("Campus Guide",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),),
                      ElevatedButton(onPressed: (){},
                        style:ElevatedButton.styleFrom(
                          fixedSize: Size(180,25),backgroundColor: Color(0xFFCDDC39),
                        ) ,
                        child:Row(
                          children: [
                            Icon(Icons.school),
                            Text("Teachers Panel",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),),
                    ],
                  ),
                ],
              )

            ],
          ),

        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.amber,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
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