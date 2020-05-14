
//======== This program recieved upter join course with "Uncle-Engineering Course name " KBTG Basic Mobile Application" ===========//


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',    
      // this is the main structure of app 
      
home: Calculate()
    );
  }
}

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  
  var product = TextEditingController();   //ກ່ອງສຳລັບເກັຊື່ິນຄ້າ
  var quatity = TextEditingController();   //ກ່ອງສຳລັບເກັບຈຳນວນ
  var price = TextEditingController();      // ກ່ອງສຳລັບເກັບລາຄາ
  
  String result = '<< The result is shown here >>';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Paserth App')
        ),
        //ໂຕທີ່ເປັນສ່ວນຂີດຂີດທາງຂ້າງເບື້ອງຂວາສຸດ
        drawer: Drawer(
                child: Column(
                    children:[
                      //blue box
                      Container(
                      height:100,
                      color:Colors.blue,
                      ),
                      //text1
                      Text('This is a drawer'),
                      //menu 1
                      ListTile(
                        leading: Icon(Icons.photo_album),
                        title:Text('Your Photo Album'),
                        onTap:(){
                          print('This is a photo');
                        }
                      )
                    ]     
                ) 
        ),
        //=== the end of drawer =====
        
        //This is the home page part from the picture untill Uncle-Engineering
        body: Center( 
               //====In the color box====//
                  child:Container(
                       // alignment:Alignment.center, 
                        //color: Colors.yellow,
                       // height:400,
                        width:500,
                        child: Align(
                          
                               alignment: Alignment.bottomCenter,   //set the position of colum to the position that we want
                                      child:Column(
                                      //Part of body
                                      children: [

                                        //Part of image at the home page=======
                                        Image(
                                          width:200,
                                          image: NetworkImage('https://riviste.newbusinessmedia.it/wp-content/uploads/sites/27/2013/12/Fotolia_11313277_M.jpg'),
                                        ),
                                        //========<>========
                                         //this function to make space
                                        SizedBox(height:20),
                                            
                                        TextField(
                                          controller: product,           //ກ່ອງໃນທີ່ນີ້ແມ່ນ controller
                                            decoration: InputDecoration(
                                               labelText:'ສຶນຄ້າ',
                                               border: OutlineInputBorder()
                                            )
                                        ),
                                        SizedBox(height:20),
                                        TextField(
                                          controller: quatity,
                                            decoration: InputDecoration(
                                               labelText:'ຈໍານວນ',
                                               border: OutlineInputBorder()
                                            )
                                        ),
                                        SizedBox(height:20),
                                        TextField(
                                          controller: price,
                                            decoration: InputDecoration(
                                               labelText:'ລາຄາ',
                                               border: OutlineInputBorder()
                                            )
                                        ),
                                        SizedBox(height:20),
                                        RaisedButton(
                                          child: Text('ຄໍານວນລາຄາລວມ'),
                                          onPressed:(){
                                            print('ປຸ່ມກຳລັງທຳງານ');
                                            print('----------');
                                            print(product.text);
                                            print(quatity.text);
                                            print(price.text);
                                            
                                            var v1=product.text;
                                            var v2=int.parse(quatity.text);    //int.parse ທີ່ໄວ້ສຳລັບການປ່ຽນເປັນຕົວເລກ
                                            var v3=int.parse(price.text);    //int.parse ທີ່ໄວ້ສຳລັບການປ່ຽນເປັນຕົວເລກ
                                            var calculated= v2 * v3;
                                            
                                            setState((){
                                              //SetState is tິhe function for refrest the app page.
                                              result ='ສິນຄ້າ: $v1 ຈຳນວນ: $v2 ລາຄາ: $v3 ຍອດລວມ $calculated ກີບ';     //$v1 ສຳລັບການນຳຄ່າມາສະແດງ
                                              
                                            });
                                            
                                            
                                          }
                                        ),
                                         SizedBox(height:30),
                                        
                                        Text(result,style: TextStyle(
                                                        fontSize:19, color: Colors.green)),
                                        
                                        
                                        
                                        SizedBox(height:10),
                                         Text('Built and Calculate by Pasert app, based on Uncle-Engineering'),
 
                                        //=====<<=======
                                        //======Part of Text ======
                                        // Text("Hello",style: TextStyle(
                                        //                             fontSize:32, color: Colors.pink)),
                                        // Text("KBTG",style: TextStyle(
                                        //                             fontSize:32, color: Colors.green)),
                                        // Text("Uncle-Engineering",style: TextStyle(
                                        //                            fontSize:32, color: Colors.blue)),
                                        //======<>===============
                                     ]
                                   )//colum
                          ) 
                   )
                   //====the End red box====//
           )
        //=========<>==============================================================================
        );//Scaffold;
  }
}
