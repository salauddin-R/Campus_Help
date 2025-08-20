import 'package:flutter/material.dart';
import 'Style/Style.dart';
import 'main.dart';

class SafeAlert extends StatelessWidget
{
  const SafeAlert({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CAMPUS ALERT",style: TextStyle(color:
          Colors.black,fontWeight: FontWeight.w900,fontSize: 32),),
          actions: [
            Icon(Icons.settings,size: 32,)
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.only(right: 25,left: 25),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 370,
                  decoration: BoxDecoration(
                    color: colorgreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Image(image: AssetImage("assets/images/Natification.png")),
                      Text("Send a SafeAlert?",style: TextStyle(color:
                      Colors.white,fontWeight: FontWeight.w900,fontSize: 25),),

                      Text("This will notify campus security and\n call emergency contacts",style: TextStyle(color:
                      Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 8,),
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: colorLime) ,
                        child:Text("Active SafeAlert",style: TextStyle(color:
                        Colors.black,fontWeight: FontWeight.w500,fontSize:22),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Text("Nearest Thana",style: TextStyle(color:
                Colors.black,fontWeight: FontWeight.w900,fontSize:26),),
                SizedBox(height: 7,),
                Container(
                  height: 70,
                  width: 350,
                  color: colorgreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on,size: 37,),
                      Column(
                        children: [
                          Text("Airport Police Station",style:textStyle(colorWhite,weight9,22.0)),
                          Text("Contact:09134909408",style:textStyle(colorWhite,weight9,22.0)),
                        ],
                      ),
                      Icon(Icons.call_made_outlined,size: 37,)
                    ],
                  ),
                ),
                SizedBox(height:10,),
                Container(
                  height: 70,
                  width: 350,
                  color: colorgreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on,size: 37,),
                      Column(
                        children: [
                          Text("Dakshinkhan Police Station",style:textStyle(colorWhite,weight9,21.0)),
                          Text("Contact:09134909408",style:textStyle(colorWhite,weight9,22.0)),
                        ],
                      ),
                      Icon(Icons.call_made_outlined,size: 37,)
                    ],
                  ),
                ),
                SizedBox(height:50,),
                Container(
                  height: 70,
                  width: 350,
                  color: colorgreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on,size: 37,),
                      Column(
                        children: [
                          Text("Campus Security",style:textStyle(colorWhite,weight9,21.0)),
                          Text("Contact:09134909408",style:textStyle(colorWhite,weight9,22.0)),
                        ],
                      ),
                      Icon(Icons.call_made_outlined,size: 37,)
                    ],
                  ),
                ),
                SizedBox(height:30,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/ComplainBox');
                },
                  style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,minimumSize: Size(250, 40)
                  ) ,
                  child:Text("Anonymous Complain Box",style: TextStyle(
                      fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                  ),),),

                SizedBox(height:20,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context,'/suggestion');
                },
                  style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,minimumSize: Size(250, 40)
                  ) ,
                  child:Text("Suggestion Box",style: TextStyle(
                      fontSize:27,fontWeight: FontWeight.w900,color: Colors.black
                  ),),),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor:colorgreen,
          selectedItemColor: colorCyan,
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