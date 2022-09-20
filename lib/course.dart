class Course {
  late String courseName, courseID, image;
  late int numberStudent;

  Course(String courseId, courseName, int numberStudent, String image) {
    this.courseID = courseId;
    this.courseName = courseName;
    this.numberStudent = numberStudent;
    this.image = image;
  }

  String get getCourseName {
    return courseName;
  }

  String get getCourseId {
    return courseID;
  }

  String get getImage {
    return image;
  }

  int get getNumberStudent {
    return numberStudent;
  }
}
