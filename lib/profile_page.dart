import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: 10,
            right: 10
        ),
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                          ),
                          image: DecorationImage(
                              image: AssetImage('assets/cover_image.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Positioned(
                        left: 345,
                        top: 120,
                        child: Column(
                          children: [
                            Icon(
                              Icons.face,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 10),
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ]
                ),

                Container(
                  margin: EdgeInsets.only(top: 115),
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/profile_pic.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Subhajit Dutta",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add_circle_sharp, size: 20,),
                        Text('Add to story', style: TextStyle(fontSize: 15),),
                      ],
                    )
                ),

                SizedBox(width: 10,),

                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.edit, size: 20,),
                        Text('Edit profile', style: TextStyle(fontSize: 15),),
                      ],
                    )
                ),

                SizedBox(width: 10,),

                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.more_horiz, size: 20,)
                      ],
                    )
                ),
              ],
            ),

            Divider(thickness: 1, height: 30,color: Colors.white,),

            Row(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'Studying B.Tech in Computer Science & Engineering',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 10,),

            Row(
              children: [
                Icon(
                  Icons.book_outlined,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'Studied at College of Engineering and Management, Kolaghat',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'Lives in Kolaghat, India',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'From Purulia',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'Single',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 8),
                Text(
                  'See your About info',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                  ),
                )
              ],
            ),

            SizedBox(height: 12),

            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Edit public details',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900]
                ),
              ),
            ),

            Divider(thickness: 1, color: Colors.black, height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white,),
                    ),
                    Text(
                      '550 friends',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  'Find friends',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlue
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

