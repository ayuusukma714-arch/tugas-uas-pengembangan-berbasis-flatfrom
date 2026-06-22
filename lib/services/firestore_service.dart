import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  final FirebaseFirestore firestore =
      FirebaseFirestore.instance;

  Future addPlaylist(
      String userId,
      String playlistName) async {

    await firestore
        .collection("playlists")
        .add({
      "userId": userId,
      "playlistName": playlistName,
      "createdAt":
          Timestamp.now(),
    });
  }

  Stream<QuerySnapshot>
      getPlaylists(String userId) {

    return firestore
        .collection("playlists")
        .where("userId",
            isEqualTo: userId)
        .snapshots();
  }

  Future deletePlaylist(
      String id) async {

    await firestore
        .collection("playlists")
        .doc(id)
        .delete();
  }
}