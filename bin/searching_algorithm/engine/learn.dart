/// Search Engine searching
/// Qidiruv mexanizmi ma’lumotlarni tez va samarali topish uchun ishlatiladi.
/// Katta hajmli ma’lumotlar bazalarida tezkor natijalarni taqdim etadi

void main() {
  List<String> docs = [
    "Dart - bu zamonaviy dasturlash tili.",
    "Flutter Dart yordamida mobil ilovalar yaratish uchun ishlatiladi.",
    "Google Dart tilini ishlab chiqdi.",
    "Dart Web dasturlash uchun ham qo‘llaniladi."
  ];
  String query = "Google";
  print("Natija:${search(docs, query)}");
}

List<String> search(List<String> documents, String query) {
  List<String> results = [];

  for (String doc in documents) {
    if (doc.toLowerCase().contains(query.toLowerCase())) {
      results.add(doc);
    }
  }

  return results;
}
