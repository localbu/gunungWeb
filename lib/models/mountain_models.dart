class MountainModels {
  String nameMountain;
  int heigh;
  String description;
  String explained;
  String location;
  String imgAssets;
  List<String> imgUrl;
  bool isFavorite;
  String geografiDescription;
  String iklimDescription;
  bool isExpanded;

  MountainModels(
      {required this.nameMountain,
      required this.description,
      required this.heigh,
      required this.imgAssets,
      required this.imgUrl,
      required this.location,
      required this.isFavorite,
      required this.explained,
      required this.geografiDescription,
      required this.iklimDescription,
      required this.isExpanded});

  static List<MountainModels> getMountainModels() {
    List<MountainModels> mountains = [];

    mountains.add(MountainModels(
      nameMountain: 'Puncak Jaya',
      heigh: 4884,
      description: 'Puncak Jaya adalah gunung tertinggi di Indonesia',
      imgAssets: 'assets/img/puncak-jaya.webp',
      imgUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHeHyGE4pAb-elCuN1IgOl_QG_6OlsoXXONQ&s',
        'https://radarlampung.disway.id/upload/d10cef2cda5ca67385863d12f0117b37.jpg',
        'https://i.pinimg.com/564x/46/af/f4/46aff4c8526308d1639a960f64e771a1.jpg'
      ],
      location: 'Kabupaten Puncak Jaya, papua',
      isFavorite: false,
      explained:
          'Puncak Jaya, yang juga dikenal sebagai Carstensz Pyramid, adalah gunung tertinggi di Indonesia dan bagian dari rangkaian Pegunungan Sudirman di Papua. Dengan ketinggian sekitar 4.884 meter (16.024 kaki) di atas permukaan laut, Puncak Jaya juga merupakan puncak tertinggi di Oceania dan termasuk dalam "Seven Summits," yaitu daftar puncak tertinggi di setiap benua.',
      geografiDescription:
          'Puncak Jaya terletak di Papua, bagian timur Indonesia, di wilayah yang dikenal dengan bentang alam yang kasar dan terpencil. Akses ke gunung ini sangat terbatas, dan biasanya membutuhkan penerbangan ke desa-desa terpencil serta perjalanan panjang melalui hutan belantara.',
      isExpanded: false,
      iklimDescription: 'Di Puncak Jaya (Carstensz Pyramid), yang terletak di Pegunungan Sudirman Papua, iklim di puncak sangat dingin dan ekstrem karena ketinggiannya yang mencapai 4.884 meter. Suhu di puncak sering kali mendekati titik beku, dengan kondisi cuaca yang dapat berubah dengan cepat. Gunung ini memiliki gletser tropis yang terancam menyusut akibat perubahan iklim. Di sekitar lereng, iklim cenderung lebih sejuk dengan curah hujan tinggi, dan sering kali terdapat kabut tebal serta angin kencang. Cuaca ekstrem dan medan yang berat membuat pendakian ke Puncak Jaya menjadi sangat menantang.'));
    mountains.add(
      MountainModels(
          nameMountain: 'Sumantri',
          heigh: 4870,
          description: 'Sumantri adalah gunung tertinggi di Indonesia',
          imgAssets: 'assets/img/sumantri.jpeg',
          imgUrl: [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHeHyGE4pAb-elCuN1IgOl_QG_6OlsoXXONQ&s',
            'https://radarlampung.disway.id/upload/d10cef2cda5ca67385863d12f0117b37.jpg',
            'https://i.pinimg.com/564x/46/af/f4/46aff4c8526308d1639a960f64e771a1.jpg'
          ],
          location: 'Papua Tengah, Indonesia',
          isFavorite: false,
          explained:
              'Gunung Sumantri, juga dikenal sebagai Puncak Sumantri, adalah salah satu puncak gunung yang berada di Pegunungan Sudirman, Papua, Indonesia. Dengan ketinggian sekitar 4.870 meter (15.978 kaki) di atas permukaan laut, Gunung Sumantri adalah salah satu dari sedikit puncak yang menjulang di wilayah ini dan merupakan bagian dari jajaran gunung-gunung tertinggi di Indonesia.',
          geografiDescription:
              'Gunung Sumantri adalah puncak setinggi 4.870 meter di Pegunungan Sudirman, Papua, Indonesia. Terletak di dekat Puncak Jaya, gunung ini berada dalam kawasan terpencil dengan medan yang sangat curam dan tertutup oleh gletser tropis. Topografinya terdiri dari tebing-tebing tinggi dan lembah-lembah dalam, dengan iklim yang ekstrem dan cepat berubah. Gunung ini dikelilingi oleh ekosistem pegunungan yang beragam, mulai dari hutan hujan tropis hingga vegetasi alpine. Akses ke Gunung Sumantri sangat sulit, seringkali memerlukan perjalanan menggunakan helikopter.',
          isExpanded: false,
          iklimDescription: 'Di Gunung Sumantri, yang terletak di Pegunungan Sudirman Papua, iklim sangat dingin dan ekstrem karena ketinggiannya yang mencapai 4.870 meter. Suhu di puncak dapat sangat rendah, sering kali mendekati titik beku, sementara di lereng gunung, iklim cenderung lebih sejuk dengan curah hujan yang tinggi. Gunung ini juga memiliki gletser tropis yang terancam menyusut akibat perubahan iklim. Kondisi cuaca sering kali meliputi kabut tebal, angin kencang, dan hujan deras, yang menambah tantangan bagi pendaki dan mempengaruhi ekosistem di sekitarnya.'),
    );
    mountains.add(
      MountainModels(
          nameMountain: 'Merapi',
          heigh: 2910,
          description:
              'Merapi adalah Aktif Yang sanga direkomendasiakn di Indonesia',
          imgAssets: 'assets/img/merapi.jpeg',
          imgUrl: [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHeHyGE4pAb-elCuN1IgOl_QG_6OlsoXXONQ&s',
            'https://radarlampung.disway.id/upload/d10cef2cda5ca67385863d12f0117b37.jpg',
            'https://i.pinimg.com/564x/46/af/f4/46aff4c8526308d1639a960f64e771a1.jpg'
          ],
          location: 'Kabupaten Sleman, DI Yogyakarta',
          isFavorite: false,
          explained:
              'Gunung Merapi adalah salah satu gunung berapi paling aktif di Indonesia dan terkenal di seluruh dunia karena letusannya yang sering dan dahsyat. Terletak di perbatasan antara Provinsi Jawa Tengah dan Daerah Istimewa Yogyakarta, Gunung Merapi memiliki ketinggian sekitar 2.930 meter (9.610 kaki) di atas permukaan laut.',
          geografiDescription:
              'Gunung Merapi adalah gunung berapi aktif setinggi 2.930 meter yang terletak di perbatasan Jawa Tengah dan Daerah Istimewa Yogyakarta, Indonesia. Gunung ini merupakan salah satu gunung berapi paling aktif di dunia, dengan letusan yang sering terjadi. Merapi memiliki topografi yang didominasi oleh kawah aktif dan lereng yang curam. Daerah sekitarnya berupa hutan tropis yang subur, namun sering terkena dampak abu vulkanik dan aliran lava saat terjadi letusan. Merapi juga memiliki iklim yang relatif basah, dengan curah hujan tinggi dan suhu yang sejuk di ketinggian.',
          isExpanded: false,
          iklimDescription: 'Di Gunung Merapi, yang terletak di perbatasan Jawa Tengah dan Daerah Istimewa Yogyakarta, iklim di sekitar gunung cenderung sejuk dengan suhu yang bervariasi antara 20 hingga 30 derajat Celsius. Suhu di puncaknya bisa lebih dingin, terutama pada malam hari. Merapi memiliki curah hujan yang tinggi, terutama selama musim hujan, yang sering menyebabkan lerengnya tertutup oleh vegetasi subur. Gunung ini dikenal dengan aktivitas vulkaniknya yang sering, yang dapat menyebabkan perubahan cuaca lokal seperti hujan abu vulkanik dan perubahan suhu mendadak. Selain itu, angin kencang dan kabut juga dapat mempengaruhi kondisi cuaca di sekitar gunung.'),
    );
    mountains.add(MountainModels(
      nameMountain: 'Puncak Jaya',
      heigh: 4884,
      description: 'Puncak Jaya adalah gunung tertinggi di Indonesia',
      imgAssets: 'assets/img/puncak-jaya.webp',
      imgUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHeHyGE4pAb-elCuN1IgOl_QG_6OlsoXXONQ&s',
        'https://radarlampung.disway.id/upload/d10cef2cda5ca67385863d12f0117b37.jpg',
        'https://i.pinimg.com/564x/46/af/f4/46aff4c8526308d1639a960f64e771a1.jpg'
      ],
      location: 'Kabupaten Puncak Jaya, papua',
      isFavorite: false,
      explained:
          'Puncak Jaya, yang juga dikenal sebagai Carstensz Pyramid, adalah gunung tertinggi di Indonesia dan bagian dari rangkaian Pegunungan Sudirman di Papua. Dengan ketinggian sekitar 4.884 meter (16.024 kaki) di atas permukaan laut, Puncak Jaya juga merupakan puncak tertinggi di Oceania dan termasuk dalam "Seven Summits," yaitu daftar puncak tertinggi di setiap benua.',
      geografiDescription:
          'Puncak Jaya terletak di Papua, bagian timur Indonesia, di wilayah yang dikenal dengan bentang alam yang kasar dan terpencil. Akses ke gunung ini sangat terbatas, dan biasanya membutuhkan penerbangan ke desa-desa terpencil serta perjalanan panjang melalui hutan belantara.',
      isExpanded: false,
      iklimDescription: 'Di Puncak Jaya (Carstensz Pyramid), yang terletak di Pegunungan Sudirman Papua, iklim di puncak sangat dingin dan ekstrem karena ketinggiannya yang mencapai 4.884 meter. Suhu di puncak sering kali mendekati titik beku, dengan kondisi cuaca yang dapat berubah dengan cepat. Gunung ini memiliki gletser tropis yang terancam menyusut akibat perubahan iklim. Di sekitar lereng, iklim cenderung lebih sejuk dengan curah hujan tinggi, dan sering kali terdapat kabut tebal serta angin kencang. Cuaca ekstrem dan medan yang berat membuat pendakian ke Puncak Jaya menjadi sangat menantang.'));
      mountains.add(MountainModels(
      nameMountain: 'Puncak Jaya',
      heigh: 4884,
      description: 'Puncak Jaya adalah gunung tertinggi di Indonesia',
      imgAssets: 'assets/img/puncak-jaya.webp',
      imgUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHeHyGE4pAb-elCuN1IgOl_QG_6OlsoXXONQ&s',
        'https://radarlampung.disway.id/upload/d10cef2cda5ca67385863d12f0117b37.jpg',
        'https://i.pinimg.com/564x/46/af/f4/46aff4c8526308d1639a960f64e771a1.jpg'
      ],
      location: 'Kabupaten Puncak Jaya, papua',
      isFavorite: false,
      explained:
          'Puncak Jaya, yang juga dikenal sebagai Carstensz Pyramid, adalah gunung tertinggi di Indonesia dan bagian dari rangkaian Pegunungan Sudirman di Papua. Dengan ketinggian sekitar 4.884 meter (16.024 kaki) di atas permukaan laut, Puncak Jaya juga merupakan puncak tertinggi di Oceania dan termasuk dalam "Seven Summits," yaitu daftar puncak tertinggi di setiap benua.',
      geografiDescription:
          'Puncak Jaya terletak di Papua, bagian timur Indonesia, di wilayah yang dikenal dengan bentang alam yang kasar dan terpencil. Akses ke gunung ini sangat terbatas, dan biasanya membutuhkan penerbangan ke desa-desa terpencil serta perjalanan panjang melalui hutan belantara.',
      isExpanded: false,
      iklimDescription: 'Di Puncak Jaya (Carstensz Pyramid), yang terletak di Pegunungan Sudirman Papua, iklim di puncak sangat dingin dan ekstrem karena ketinggiannya yang mencapai 4.884 meter. Suhu di puncak sering kali mendekati titik beku, dengan kondisi cuaca yang dapat berubah dengan cepat. Gunung ini memiliki gletser tropis yang terancam menyusut akibat perubahan iklim. Di sekitar lereng, iklim cenderung lebih sejuk dengan curah hujan tinggi, dan sering kali terdapat kabut tebal serta angin kencang. Cuaca ekstrem dan medan yang berat membuat pendakian ke Puncak Jaya menjadi sangat menantang.'));

    return mountains;
  }
}
