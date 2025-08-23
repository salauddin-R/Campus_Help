import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Style/Style.dart';



class skillDetails extends StatelessWidget {
  final List skillData;
  final Map fixedData;
  const skillDetails({super.key, required this.skillData, required this.fixedData,});

  void _callPhone(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(url)) {
      print('Could not launch $url');
    }
  }

  void _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Hello&body=Hi, I want to connect with you.', // চাইলে preset subject/body দিতে পারো
    );
    if (!await launchUrl(emailUri)) {
      print('Could not launch $emailUri');
    }
  }

  void _launchLinkedIn(String url) async {
    final Uri linkedInUri = Uri.parse(url);
    if (!await launchUrl(linkedInUri, mode: LaunchMode.externalApplication)) {
      print('Could not launch $linkedInUri');
    }
  }

  void _launchWhatsApp(String phone) async {
    final Uri whatsappUri = Uri.parse("https://wa.me/$phone");
    if (!await launchUrl(whatsappUri, mode: LaunchMode.externalApplication)) {
      print('Could not launch $whatsappUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    List remainingList = skillData.where((e) => e != fixedData).toList();
    return Scaffold(
      backgroundColor:colorDarkWhite,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:72,
              width:72,
            child: Image.asset(fixedData["Logo"],fit:BoxFit.fill,),
            ),
            SizedBox(height: 5,),
            Text(fixedData["Skill"],style:textStyle(colorBlack,weight6,32.0)),
            SizedBox(height: 5,),
            Text(fixedData["Services"],style:textStyle(colorBlack,weight4,20.0)),
            SizedBox(height:20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.group),
                Text("   3 Expart"),
                SizedBox(width: 60,),
                Icon(Icons.emoji_events),
                Text("   1 Department Head"),
                // Icon(Icons.ai),
                // Text()
              ],
            ),
            SizedBox(height:10,),
            Row(
              children: [
                SizedBox(width:8,),
                Icon(Icons.emoji_events,size: 25,),
                SizedBox(width:5,),
                Text("  Department Head",style:textStyle(colorBlack,weight4,25.0)),
              ],
            ),

            SizedBox(height:10,),
            Container(
              height:193,
              width:355,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:2,),
                  CircleAvatar(
                    child:ClipOval(child: Image.asset(fixedData["Image"],fit: BoxFit.cover,
                    height: 80,width: 80,)) ,
                    radius: 40,
                  ),
                  SizedBox(height:1.5,),
                  Text(fixedData["Name"],style:textStyle(colorBlack,weight6,20.0)),
                  SizedBox(height:1.5,),
                  Text(fixedData["Position"],style:textStyle(colorPink,weight4,13.0)),
                  SizedBox(height:1.5,),
                  Text(fixedData["Topic"],style:textStyle(colorBlack,weight4,15.0)),
                  SizedBox(height:4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _launchEmail(fixedData["email"]);
                        },
                        child:Container(
                        height:30 ,
                        width: 30,
                          child: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-gmail-logo-icon-svg-png-download-2476484.png?f=webp",fit: BoxFit.cover,),
                     )),
                      SizedBox(width: 20,),
                      GestureDetector(
                          onTap: () {
                            _launchWhatsApp(fixedData["Phone"]);
                          },
                          child:Container(
                            height:30 ,
                            width: 30,
                            child: Image.network("https://thumbs.dreamstime.com/b/web-184356092.jpg"),
                          )),
                      SizedBox(width: 20,),
                      GestureDetector(
                          onTap: () {
                            _launchLinkedIn(fixedData[ "Linkedin"]);
                          },
                          child:Container(
                            height:30 ,
                            width: 30,
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRokEYt0yyh6uNDKL8uksVLlhZ35laKNQgZ9g&s"),

                          )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:10,),
            Row(
              children: [
                SizedBox(width:10,),
                Icon(Icons.group,size: 25,),
                SizedBox(width:5,),
                Text("  Other Experts",style:textStyle(colorBlack,weight4,25.0)),
              ],
            ),
            SizedBox(height:10,),
            Expanded(child:ListView.builder(
                itemCount:remainingList.length,
                itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height:193,
                      width:355,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height:2,),
                          CircleAvatar(
                            child:ClipOval(child: Image.asset(remainingList[index]["Image"],fit: BoxFit.cover,
                              height: 80,width: 80,)) ,
                            radius: 40,
                          ),
                          SizedBox(height:0.5,),
                          Text(remainingList[index]["Name"],style:textStyle(colorBlack,weight6,20.0)),
                          SizedBox(height:1.5,),
                          Text(remainingList[index]["Department"],style:textStyle(colorPink,weight4,13.0)),
                          SizedBox(height:1.5,),
                          Text(remainingList[index]["Topic"],style:textStyle(colorBlack,weight4,15.0)),
                          SizedBox(height:4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    _launchEmail(remainingList[index]["email"]);
                                  },
                                  child:Container(
                                    height:30 ,
                                    width: 30,
                                    child: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-gmail-logo-icon-svg-png-download-2476484.png?f=webp",fit: BoxFit.cover,),
                                  )),
                              SizedBox(width: 20,),
                              GestureDetector(
                                  onTap: () {
                                    _launchWhatsApp(remainingList[index]["Phone"]);
                                  },
                                  child:Container(
                                    height:30 ,
                                    width: 30,
                                    child: Image.network("https://thumbs.dreamstime.com/b/web-184356092.jpg"),
                                  )),
                              SizedBox(width: 20,),
                              GestureDetector(
                                  onTap: () {
                                    _launchLinkedIn(remainingList[index][ "Linkedin"]);
                                  },
                                  child:Container(
                                    height:30 ,
                                    width: 30,
                                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRokEYt0yyh6uNDKL8uksVLlhZ35laKNQgZ9g&s"),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );

                })
            )



            // IconButton(
            //   icon: Icon(Icons.call,color: Colors.white,size: 40,),
            //   onPressed: () {
            //  _callPhone(skillData["Phone"]);
            //   },
            // )

          ],
        ),
      ),
    );
  }
}