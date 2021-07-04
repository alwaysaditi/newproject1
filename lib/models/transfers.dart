class Transfers {
  int id;
  String s_name;
  String r_name;
  double amount;
 
  Transfers(this.id, this.s_name, this.r_name, this.amount);


  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if(id!=null)
    {
map['id'] = id;
    }
    
    map['s_name'] = s_name;
    map['r_name'] = r_name;
    map['amount'] = amount;
    return map;
  }

  factory Transfers.fromMap( Map<String, dynamic> map)//factory functions allow you to return objects
  {

    return Transfers( map['id'], map['name'],map['curbal'],map['email']);
  }

  
}
