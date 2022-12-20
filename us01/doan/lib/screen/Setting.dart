import 'package:doan/screen/information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class setting  extends StatelessWidget {
  const setting ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home:Scaffold(
          appBar: AppBar(
               leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ), 
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text("Cài đặt ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
          body: SingleChildScrollView(   
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 216, 169, 167), Color.fromARGB(255, 204, 204, 216)]),
              ),
              child: Column(
                
                children: [
                  Card( 
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    color: Color.fromARGB(255, 209, 209, 209),
                    margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text("Mavis vermilion",style: TextStyle(fontWeight: FontWeight.bold),),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2F9mobi.vn%2Fanh-dep-2015n.aspx&psig=AOvVaw1jM5xeBiOP_X16arfUQjIL&ust=1671598805295000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNi6pve0h_wCFQAAAAAdAAAAABAI"),
                      ),
                      trailing: IconButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Inforplayer(),
                              ),
                            );
                      }, icon: SvgPicture.asset("images/edit.svg"))
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                       child: Column(children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0,0,8,0),
                           child: IconButton(onPressed: (){}, icon: SvgPicture.asset("images/volumetru.svg"))
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8,0,0,0),
                           child: IconButton(onPressed: (){}, icon: SvgPicture.asset("images/volumecong.svg"))
                         ),   
                        ],),
                        ListTile( 
                          leading:Icon(Icons.lock_outline,color: Color.fromARGB(255, 29, 28, 28),) ,
                          title: Text("Thay đổi mật khẩu "),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){},
                          ),
                           ListTile( 
                          leading:Icon(Icons.logout,color: Color.fromARGB(255, 29, 28, 28),) ,
                          title: Text("Đăng xuất"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){},
                          ),
                       ],
                       ),
                  )
                ],
              ),
            ),
          ),
    ),
      ) ;
  }
}