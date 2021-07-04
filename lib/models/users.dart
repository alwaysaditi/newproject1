class Users {
  int id;
  String name;
  double curbal;
  String email;
  Users(this.id, this.name, this.curbal, this.email);


  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if(id!=null)
    {
map['id'] = id;
    }
    
    map['name'] = name;
    map['curbal'] = curbal;
    map['email'] = email;
    return map;
  }

  factory Users.fromMap( Map<String, dynamic> map)//factory functions allow you to return objects
  {

    return Users( map['id'], map['name'],map['curbal'],map['email']);
  }

  
}
