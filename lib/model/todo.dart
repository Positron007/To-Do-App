class ToDo{
  String? id;
  String? todoText;
  bool isDone;

ToDo(
  {
    required this.id,
    required this.todoText,
    this.isDone = false,
}
    );

static List<ToDo> todosList(){
  return[
    ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
    ToDo(id: '02', todoText: 'Buy Milk', isDone: true),
    ToDo(id: '03', todoText: 'Check Mails'),
    ToDo(id: '04', todoText: 'Team Meetings'),
    ToDo(id: '05', todoText: 'Work on the app'),
    ToDo(id: '06', todoText: 'Dinner')
  ];
}
}
