class TabIconData {
  String image;
  String selectedImage;
  bool isSelected;
  int index;

  TabIconData({
    this.image = '',
    this.index = 0,
    this.selectedImage = '',
    this.isSelected = false,
  });

  static List<TabIconData> tabIconsList = [
    TabIconData(
      image: 'lib/assets/images/tab_1.png',
      selectedImage: 'lib/assets/images/tab_1s.png',
      index: 0,
      isSelected: true,
    ),
    TabIconData(
      image: 'lib/assets/images/tab_2.png',
      selectedImage: 'lib/assets/images/tab_2s.png',
      index: 1,
      isSelected: false,
    ),
    TabIconData(
      image: 'lib/assets/images/tab_3.png',
      selectedImage: 'lib/assets/images/tab_3s.png',
      index: 2,
      isSelected: false,
    ),
    TabIconData(
      image: 'lib/assets/images/tab_4.png',
      selectedImage: 'lib/assets/images/tab_4s.png',
      index: 3,
      isSelected: false,
    ),
  ];
}
