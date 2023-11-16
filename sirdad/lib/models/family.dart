import 'package:sirdad/services/crud.dart';
import 'package:sirdad/services/tables.dart';

class Family extends Crud {
  int idf;
  String barrio;
  String address;
  int phone;
  String date;
  String eventId;

  Family({
     this.idf=0,
    required this.barrio,
    required this.address,
    required this.phone,
    required this.date,
    required this.eventId,
  }) : super(familyTable);

  @override
  String toString() {
    return '\n Id: $idf barrio: $barrio phone: $phone \n';
  }

  /* Family toObject(Map<dynamic, dynamic> data) {
    return Family(
        idf: data['idf'],
        barrio: data['barrio'],
        address: data['address'],
        phone: data['phone'],
        date: data['date'],
        eventId: data['eventId']);
  } */

  Map<String, dynamic> toMap() {
    return {
      'idf': idf > 0 ? idf : null,
      'barrio': barrio,
      'address': address,
      'phone': phone,
      'date': date,
      'eventId': eventId,
    };
  }

  save() async {
    print("Family");
    //return await((idf > 0) ? update(toMap()) : create(toMap()));
  }

  remove() async {
    await delete(idf);
  }
/* 
   Future<List<Family>> getFamilys() async {
     var resultf = await query('SELECT * FROM $familyTable');
     return _getListObject(resultf);
   } */

  /* List<Family> _getListObject(parsed) {
     return (parsed as List).map((map) => toObject(map)).toList();
   } */
}
