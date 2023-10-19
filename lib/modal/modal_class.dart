class Workmodel{

  String? title,descrip,priority;

  Workmodel({this.title,this.descrip,this.priority});

  factory Workmodel.fromMap(Map m1){
    Workmodel w1 =Workmodel(
      title: m1['title'],descrip: m1['descrip'],priority: m1['priority']
    );
    return w1;
  }
}