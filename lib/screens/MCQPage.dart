import 'package:flutter/material.dart';
import 'package:listen2re/constants/text_helper.dart';
import 'package:listen2re/widgets/CardWidget.dart';
import 'package:sizer/sizer.dart';

class MCQPage extends StatefulWidget {
  @override
  State<MCQPage> createState() => _MCQPageState();
}

class _MCQPageState extends State<MCQPage> {
  List<Map<String, String>> books = [
    {'title': 'RS SHARMA', 'imagePath': 'assets/rs_sharma.jpeg'},
    {'title': 'LAXMIKANTH', 'imagePath': 'assets/laxmi_kanth.jpeg'},
    {'title': 'GC LEONG', 'imagePath': 'assets/gc_leong.jpeg'},
    {'title': 'RS SHARMA', 'imagePath': 'assets/rs_sharma.jpeg'},
    {'title': 'GC LEONG', 'imagePath': 'assets/gc_leong.jpeg'},
   // {'title': 'SPECTRUM', 'imagePath': 'assets/spectrum.jpg'},
  ];
  List<Map<String, String>> subjects = [
    {'title': 'History', 'imagePath': 'assets/history.jpg'},
    {'title': 'Polity', 'imagePath': 'assets/polity.jpeg'},
    {'title': 'Geography', 'imagePath': 'assets/geography.jpeg'},
    {'title': 'Economy', 'imagePath': 'assets/economy.jpg'},
    {'title': 'Reasoning', 'imagePath': 'assets/reasoning.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PYQ and Mocks',style:TextHelper.h6.copyWith(fontWeight: FontWeight.bold),)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Text(
            'Practice makes and Aspirant, Officer!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 2.h),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text('PYQs', style: TextHelper.h2.copyWith(fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 20.w,
                      margin: EdgeInsets.only(right: 2.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey, // Set border color to grey
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            (2023 - index).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff7fbfd),
                  borderRadius: BorderRadius.circular(10), // Set the border radius here
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Subject wise Mocks',
                        style: TextHelper.h6.copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Targeted learning, one Subject at a time.',
                        style: TextHelper.h7,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 18.h,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: subjects.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right:3),
                              child: CardWidget(
                                title: subjects[index]['title']!,
                                imagePath: subjects[index]['imagePath']!,
                                width: 22.w,
                                height: 12.h, radius: 15,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),




            SizedBox(height: 2.h),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff7fbfd),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                ListTile(
                  title: Text(
                    'Book based Mocks',
                    style:TextHelper.h6.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Master all major Books!',
                    style:TextHelper.h7,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: SizedBox(
                    height: 25.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return CardWidget(
                          title: books[index]['title']!,
                          imagePath: books[index]['imagePath']!,
                          width: 25.w,
                          height: 20.h, radius: 2,
                        );
                      },
                    ),
                  ),
                ),
                      ],
              ),
              ),
            ),


            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
