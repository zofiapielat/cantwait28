import 'package:cantwait28/models/item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ItemsRepository {
  Stream<List<ItemModel>> getItemsStream() {
    return FirebaseFirestore.instance
        .collection('items')
        .orderBy('release_date')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return ItemModel(
            title: doc['title'],
            imageURL: doc['image_url'],
            releaseDate: (doc['release_date'] as Timestamp).toDate(),
            id: doc.id);
      }).toList();
    });
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('items').doc(id).delete();
  }

  Future<ItemModel> get({required String id}) async {
    final doc =
        await FirebaseFirestore.instance.collection('items').doc(id).get();
    return ItemModel(
      title: doc['title'],
      imageURL: doc['image_url'],
      releaseDate: (doc['release_date'] as Timestamp).toDate(),
      id: doc.id,
    );
  }

  Future<void> add(
    String title,
    String imageURL,
    DateTime releaseDate,
  ) async {
    await FirebaseFirestore.instance.collection('items').add(
      {
        'title': title,
        'image_url': imageURL,
        'release_date': releaseDate,
      },
    );
  }
}
