import 'package:flutter/material.dart';
import 'package:project_test/course.dart';

class SliderPage extends StatelessWidget {
  SliderPage({super.key});

  // Course course1 = new Course('2021-2022.2.TIN3142.003',
  //     'Thực tập viết niên luận', 12, 'assets/sliders/anh1.jpg');
  // Course course2 = new Course('2021-2022.2.TIN3142.0034', 'Công nghệ XML', 12,
  //     'assets/sliders/anh2.jpg');
  // Course course3 = new Course('2021-2022.2.TIN3142.003', 'Lập trình Frond-end',
  //     12, 'assets/sliders/anh3.jpg');
  // Course course4 = new Course('2021-2022.2.TIN3142.003',
  //     'Lập trình hướng đối tương', 12, 'assets/sliders/anh4.jpg');
  // Course course5 = new Course('2021-2022.2.TIN3142.003', 'Kỹ nghệ phần mềm', 12,
  //     'assets/sliders/anh5.jpg');

  final List<String> _list = [
    'assets/sliders/anh1.jpg',
    'assets/sliders/anh2.jpg',
    'assets/sliders/anh3.jpg',
    'assets/sliders/anh4.jpg',
    'assets/sliders/anh5.jpg',
  ];

  final List<Course> _listCourses = [
    new Course(
        '2021-2022.2.TIN3142.003',
        '[2021-2022.2] - Thực tập viết niên luận',
        12,
        'assets/sliders/anh1.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Công nghệ XML', 12,
        'assets/sliders/anh2.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Java nâng cao', 12,
        'assets/sliders/anh3.jpg'),
    new Course(
        '2021-2022.2.TIN3142.0034',
        '[2021-2022.2] - Lập trình hướng đối tượng',
        12,
        'assets/sliders/anh4.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Lập trình c#', 12,
        'assets/sliders/anh5.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        // buildRowSlider(context),
        buildListImage(context),
      ],
    )));
  }

  Container buildListImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ..._listCourses.map((e) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: Container(
                    child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(children: [
                    Text(
                      e.getCourseName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          e.getCourseId,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 140),
                      child: Row(
                        children: [
                          Text(
                            e.getNumberStudent.toString() + " học viên",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                )),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.getImage), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular((12))),
              );
            })
          ],
        ),
      ),
    );
  }

  // Container buildRowSlider(BuildContext context) {
  //   return Container(
  //     height: 400,
  //     width: double.infinity,
  //     child: SingleChildScrollView(
  //       scrollDirection: Axis.horizontal,
  //       child: Row(
  //         children: [
  //           ..._listCourses.map((e) {
  //             return Container(
  //               margin: EdgeInsets.all(10),
  //               height: 300,
  //               width: MediaQuery.of(context).size.width,
  //               decoration: BoxDecoration(
  //                   image: DecorationImage(
  //                       image: AssetImage(e.getImage), fit: BoxFit.cover),
  //                   borderRadius: BorderRadius.circular((30))),
  //             );
  //           })
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
