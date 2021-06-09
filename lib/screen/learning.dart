import 'package:flutter/material.dart';
import 'package:myplayer/player.dart';
import 'package:blobs/blobs.dart';

class LearningPage extends StatefulWidget {
  // LearningPage({Key key}) : super(key: key);

  @override
  _LearningPageState createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  List list_data = [
    {
      "heading": "Introduction",
      "videos": [
        {
          "title": "List",
          "link": "askdaspduasd",
        },
        {
          "title": "List",
          "link": "askdaspduasd",
        },
        {
          "title": "List",
          "link": "askdaspduasd",
        }
      ]
    },
    {
      "heading": "Intermediate",
      "videos": [
        {
          "title": "Scrolling to .....",
          "link": "askdaspduasd",
        },
        {
          "title": "Hello Guys this is a machine learning",
          "link": "askdaspduasd",
        },
        {
          "title": "this is good learn",
          "link": "askdaspduasd",
        }
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Player(),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, bottom: 5),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Text(
                        "Introduction to Machine learning and Deeplearning Specification",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          
                            // color: Colors.blue,
                            // height: 30,
                            child: Column(children: [
                              Icon(Icons.video_collection, color: Colors.blue,),
                              Text("Lessons", style: TextStyle(
                                letterSpacing: 0,
                                fontSize: 10,
                              ),)
                            ])),
                        Container(
                         
                       child: Column(children: [
                              Icon(Icons.more_horiz),
                              Text("More", style: TextStyle(
                                letterSpacing: 0,
                                fontSize: 10,
                              ),)
                            ])),
                      ]
                      ),
                )),
            Flexible(
                flex: 1,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Row(children: [
                          Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(left: 13, top: 15, bottom: 10),
                                                        child: Text(
                                "Section 1 - Introduction to Machine Learning", style: TextStyle(
                                  fontSize: 14
                                ),),
                                                      ),
                          )
                        ]),
                        Container(
                          width: MediaQuery.of(context).size.width,
              
                          child: Row(children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(10),
                            
                            
                            child: Center(
                              child: Text("1", style: TextStyle(
                              
                                fontSize: 20
                              
                              ),),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                               padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))
                                    
                                    )
                                  ),
                              child: Column(children: [
                                Row(children: [
                                  Icon(Icons.check_circle, color: Colors.blueAccent, size: 16),
                                  Expanded(
                                      child: Container(
                                      // height: 40,
                                      // color: Colors.red,
                                      margin: EdgeInsets.only(left: 7,),
                                      child: Text("Course Outline", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800
                                      ),),),
                                  )
                                ],),
                                 Row(children: [
                                  
                                  Container(
                                    margin: EdgeInsets.only(left: 23,top: 4),
                                    width: 18,
                                    height: 18,
                                    child: Image.asset("images/active_lessons.png")),
                                  Container(
                                  margin: EdgeInsets.only(left: 6, top: 6),  
                                  child: Text("- 5:00 min",
                                  style: TextStyle(
                                    fontSize: 14
                                  )
                                  ))
                                ],),
                              ],),
                            ),
                          )
                        ])
                        ),
      //  delete
      
  Container(
                          width: MediaQuery.of(context).size.width,
              
                          child: Row(children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(10),
                            
                            
                            child: Center(
                              child: Text("1", style: TextStyle(
                              
                                fontSize: 20
                              
                              ),),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                               padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))
                                    
                                    )
                                  ),
                              child: Column(children: [
                                Row(children: [
                                  Icon(Icons.check_circle, color: Colors.blueAccent, size: 16),
                                  Expanded(
                                      child: Container(
                                      // height: 40,
                                      // color: Colors.red,
                                      margin: EdgeInsets.only(left: 7,),
                                      child: Text("Course Outline", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800
                                      ),),),
                                  )
                                ],),
                                 Row(children: [
                                  
                                  Container(
                                    margin: EdgeInsets.only(left: 23,top: 4),
                                    width: 18,
                                    height: 18,
                                    child: Image.asset("images/active_lessons.png")),
                                  Container(
                                  margin: EdgeInsets.only(left: 6, top: 6),  
                                  child: Text("- 5:00 min",
                                  style: TextStyle(
                                    fontSize: 14
                                  )
                                  ))
                                ],),
                              ],),
                            ),
                          )
                        ])
                        ),
                        
                       
                       
                        
                      ],
                    ),
                    Column(
                      children: [
                        Row(children: [
                          Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(left: 13, top: 15, bottom: 10),
                                                        child: Text(
                                "Section 1 - Introduction to Machine Learning", style: TextStyle(
                                  fontSize: 14
                                ),),
                                                      ),
                          )
                        ]),
                        Container(
                          width: MediaQuery.of(context).size.width,
              
                          child: Row(children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(10),
                            
                            
                            child: Center(
                              child: Text("1", style: TextStyle(
                              
                                fontSize: 20
                              
                              ),),
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                               padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))
                                    
                                    )
                                  ),
                              child: Column(children: [
                                Row(children: [
                                  Icon(Icons.check_circle, color: Colors.blueAccent, size: 16),
                                  Expanded(
                                      child: Container(
                                      // height: 40,
                                      // color: Colors.red,
                                      margin: EdgeInsets.only(left: 7,),
                                      child: Text("Course Outline", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800
                                      ),),),
                                  )
                                ],),
                                 Row(children: [
                                  
                                  Container(
                                    margin: EdgeInsets.only(left: 23,top: 4),
                                    width: 18,
                                    height: 18,
                                    child: Image.asset("images/active_lessons.png")),
                                  Container(
                                  margin: EdgeInsets.only(left: 6, top: 6),  
                                  child: Text("- 5:00 min",
                                  style: TextStyle(
                                    fontSize: 14
                                  )
                                  ))
                                ],),
                              ],),
                            ),
                          )
                        ])
                        ),
      //  delete
      

                        
                       
                       
                        
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
