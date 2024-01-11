class Course {
  final String title;
  final String description;
  final String harga;

  Course({
    required this.title,
    required this.description,
    required this.harga,
  });
}

List<Course> courses = [
  Course(title: 'Flutter Beginner', description: 'Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.', harga: 'IDR 250.000'),
  Course(title: 'Business Plan', description: 'Business plan is a written document that describes a company s goals and how it plans to achieve them.', harga: 'IDR 100.000')

];
