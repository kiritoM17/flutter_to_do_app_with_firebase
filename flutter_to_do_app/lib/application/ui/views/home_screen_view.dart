
import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/application/constants/app_color.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    final Size media_size = MediaQuery.of(context).size;
    void _nextScreen(){
      Navigator.pushNamed(context, '/to_do_screen');
    }
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: media_size.height,
            width: media_size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_home.png'),
                fit: BoxFit.fill,
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Tasks\nManagement',
                    style: TextStyle(
                      fontSize: 46,
                      color: AppColors.primary_color,
                      fontFamily: 'SFProDisplay-Bold'
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Manage your daily task easier like\n never before. Easy to use',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.primary_color,
                      fontFamily: 'SFProText-Regular'
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: GestureDetector(
                      onTap: _nextScreen,
                      child: Container(
                        height: 51,
                        width: 222,
                        decoration: BoxDecoration(
                          color: AppColors.secondary_color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Let’s Get Started',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.white_color,
                                fontFamily: 'SFProText-Regular'
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/image_home.png',
                    height: 490,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
