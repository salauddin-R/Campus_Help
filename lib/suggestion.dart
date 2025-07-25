import 'package:flutter/material.dart';

class SuggestionBox extends StatelessWidget
{
  const SuggestionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CampusBond",style: TextStyle(color:
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
                    color: Color(0xFF00695C),
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
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFCDDC39)) ,
                        child:Text("Active SafeAlert",style: TextStyle(color:
                        Colors.black,fontWeight: FontWeight.w500,fontSize:22),),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Suggestion  Box",style: TextStyle(
                    fontSize:27,fontWeight: FontWeight.w900
                ),),


                SizedBox(height:20,),
                TextField(

                  decoration: InputDecoration(
                      labelText:"Subject",
                      filled: true,
                      enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,width: 2
                          )
                      )
                  ),
                ),

                SizedBox(height:30,),
                SizedBox(
                  width: 370,
                  height: 220,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    minLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      labelText: "Detalled brief...",
                      labelStyle: TextStyle(color: Colors.black),
                      alignLabelWithHint: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(onPressed: (){},
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCDDC39),minimumSize: Size(250, 40)
                  ) ,
                  child:Text("Submit",style: TextStyle(
                      fontSize:27,fontWeight: FontWeight.w900,color: Colors.black
                  ),),),


              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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