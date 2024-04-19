List<Map<String, dynamic>> student = [
  {"name": "John Doe", "gr_id": "GR001", "standard": 10},
  {"name": "Jane Smith", "gr_id": "GR002", "standard": 9},
  {"name": "Michael Johnson", "gr_id": "GR003", "standard": 11},
  {"name": "Emily Williams", "gr_id": "GR004", "standard": 8},
  {"name": "Daniel Brown", "gr_id": "GR005", "standard": 12},
  {"name": "Sarah Miller", "gr_id": "GR006", "standard": 10},
  {"name": "David Wilson", "gr_id": "GR007", "standard": 9},
  {"name": "Olivia Taylor", "gr_id": "GR008", "standard": 11},
  {"name": "James Anderson", "gr_id": "GR009", "standard": 8},
  {"name": "Sophia Martinez", "gr_id": "GR010", "standard": 12}
];

class Student {
  String name;
  String gr_id;
  String standard;

  Student({
    required this.name,
    required this.gr_id,
    required this.standard,
  });
  factory Student.fromMap({required Map<String, dynamic> studentdata}) {
    return Student(
      name: studentdata['name'],
      gr_id: studentdata['gr_id'],
      standard: studentdata['standard'],
    );
  }
}
