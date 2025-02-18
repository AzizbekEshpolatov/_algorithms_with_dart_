class Solution {
  String removeDuplicateLetters(String s) {
    /**
        Har bir harf faqat 1 marta qatnashsin va eng kichik leksikografik
        tartibda string hosil qilinsin.
        bcabc -> shunchaki set qilib bca yoki bac qaytarib qoyish xato.
        leksikografik bolishi uchun result = abc bolishi kerak
     */
    // eng songida qaytarishimiz kerak bolgan string.
    String result_str = '';
    // Map → Harf keyin yana keladimi, bilish uchun.
    Map<String, int> helper_map = {};
    // Set → Qo‘shilgan harfni qayta qo‘shmaslik uchun.
    Set<String> helper_set = {};
    // birinchi navbatda map qiymatlanadi.
    for (int i = 0; i < s.length; i++)
      helper_map[s[i]] = (helper_map[s[i]] ?? 0) + 1;

    // asosiy logika, bizda map qiymatlanib bolgan.
    for (int i = 0; i < s.length; i++) {
      var letter = s[i];
      // set tekshiriladi. Agar setga qoshilgan bolsa element shuchaki count
      // kamaytirilib, skip qivorishimiz kerak!.
      if (helper_set.contains(letter)) {
        helper_map[letter] = helper_map[letter]! - 1;
        continue;
      } else {
        // result check qilish kerak, oxirgi elementni tekshirishimiz kerak.
        // yani eng etibor berish kerak bolgan leksikografik tartib logikasi shu joyda qilinadi.
        while (result_str.isNotEmpty &&
            result_str[result_str.length - 1].compareTo(letter) > 0 &&
            helper_map[result_str[result_str.length - 1]]! > 0) {
          helper_set.remove(result_str[result_str.length - 1]);
          result_str = result_str.substring(0, result_str.length - 1);
        }
        // har doim letter qoshilishi kerak.
        // letter qoshilgach, Keyin yana keladimi yoki yo‘qmini bilish uchun map-dagi
        // countni kamaytiramiz.
        helper_map[letter] = helper_map[letter]! - 1;
        helper_set.add(letter);
        result_str += letter;
      }
    }
    return result_str;
  }
}
