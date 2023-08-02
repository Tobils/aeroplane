import 'package:aeroplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DsetinationSErvice {
  final CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetch() async {
    try {
      QuerySnapshot result = await _destinationRef.get();
      List<DestinationModel> destinations = result.docs.map((element) {
        return DestinationModel.fromJson(
            element.id, element.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
