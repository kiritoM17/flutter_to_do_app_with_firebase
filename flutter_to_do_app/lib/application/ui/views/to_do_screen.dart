
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/application/constants/app_color.dart';

class ToDoScreenView extends StatefulWidget {
  const ToDoScreenView({Key? key}) : super(key: key);

  @override
  _ToDoScreenViewState createState() => _ToDoScreenViewState();
}

class _ToDoScreenViewState extends State<ToDoScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 5,
                bottom: 5
            ),
            decoration: BoxDecoration(
              color: AppColors.secondary_color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5
              ),
              padding: EdgeInsets.only(
                left: 07,
                right: 07
              ),
              decoration: BoxDecoration(
                color: AppColors.secondary_color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(Icons.web_asset_outlined),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Tasks',
                style: TextStyle(
                    fontSize: 40,
                    color: AppColors.primary_color,
                    fontFamily: 'SFProDisplay-Bold',
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30,
                    right: 30
                ),
                child: TextField(
                  style: TextStyle(
                      color: AppColors.secondary_color
                  ),
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: (){},
                      child: Icon(Icons.search,color: AppColors.secondary_color),
                    ),
                    filled: true,
                    fillColor: Color(0x34ffaaa5),
                    hintText: 'Search tasks or recent tasks',
                    hintStyle: TextStyle(
                      color: AppColors.secondary_color,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondary_color),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondary_color),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondary_color),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Tasks On Pending',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.primary_color,
                    fontFamily: 'SFProDisplay-Bold',
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 182,
                    width: 163,
                    decoration: BoxDecoration(
                        color: AppColors.white_color,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Landing Page\nRedesign',
                          style: TextStyle(
                              color: AppColors.primary_color,
                              fontSize: 20
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              color: AppColors.secondary_color,
                              fontSize: 11
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 182,
                    width: 163,
                    decoration: BoxDecoration(
                        color: AppColors.white_color,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'App Wireframe\nResearch',
                          style: TextStyle(
                              color: AppColors.primary_color,
                              fontSize: 20
                          ),
                        ),
                        Text(
                          'Deadline : 15th April 2020',
                          style: TextStyle(
                              color: AppColors.secondary_color,
                              fontSize: 11
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Upcoming Tasks',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.primary_color,
                    fontFamily: 'SFProDisplay-Bold',
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
              ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0x34ffaaa5),
                      child: Center(
                        child: Image.asset('assets/images/clipboard.png',width: 20,height: 20, ),
                      ),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design new concept of website',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.primary_color
                          ),
                        ),
                        Text(
                          'Deadline : 1st April 2020',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.text_color
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.menu_sharp),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.primary_color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(
              left: 10
            ),
            child: Container(
              height: 37,
              width: 96,
              decoration: BoxDecoration(
                color: AppColors.white_color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: AppColors.primary_color,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 13,
                        color: AppColors.primary_color
                    ),
                  ),
                ],
              ),
            ),
            ),
           Padding(padding: EdgeInsets.only(
             right: 10
           ),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.calendar_today_sharp,color: AppColors.white_color,),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.task_alt,color: AppColors.white_color,),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.person,color: AppColors.white_color,),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
