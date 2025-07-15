import 'package:flutter/material.dart';

class StudyResources extends StatelessWidget
{
  const StudyResources({super.key});



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
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0xFF00695C),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),

                child:Text("       Study Resources",style: TextStyle(color:
                Colors.white,fontWeight: FontWeight.w900,fontSize: 25),),


              ),

              Container(
                height: 400,
                width: 370,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    border: Border.all(
                        color: Color(0xFF00695C),
                        width: 2
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height:5,),
                    Text("     Department:",style: TextStyle(color:
                    Colors.black,fontWeight: FontWeight.w900,fontSize: 25),),
                    SizedBox(height:6,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("CSE",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),
                    SizedBox(height:10,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("EEE",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),
                    SizedBox(height:10,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("Textile",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),
                    SizedBox(height:10,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("BBA",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),
                    SizedBox(height:10,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("English",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),
                    SizedBox(height:10,),
                    ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFCDDC39),minimumSize: Size(250, 40)
                      ) ,
                      child:Text("Bangla",style: TextStyle(
                          fontSize:25,fontWeight: FontWeight.w900,color: Colors.black
                      ),),),

                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),

                child:Text("       Take Help from Senior:",style: TextStyle(color:
                Colors.black,fontWeight: FontWeight.w900,fontSize: 25),),
              ),

              Container(
                height: 250,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    border: Border.all(
                        color: Color(0xFF00695C),
                        width: 2
                    )
                ),
                child: Column(
                  children: [

                    SizedBox(
                      height: 7,
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.orangeAccent,
                        minimumSize: Size(250, 40),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "  Md Fahim Muntasir(cse)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: Size(250, 40),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "  Md Murad Hossen(cse)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 7,
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: Size(250, 40),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "  Md Sakib Hosen(cse)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 7,
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: Size(250, 40),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "  Mohammad Ali(cse)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),




                  ],
                ),
              ),
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
        },),

    );
  }
}