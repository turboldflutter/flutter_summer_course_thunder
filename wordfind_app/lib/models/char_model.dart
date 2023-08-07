class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;

  CharModel({
    this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,
  });
  getCurrentValue() {
    if (correctValue != null) {
      return currentValue;
    }
    if (hintShow) {
      return correctValue;
    }
  }
  clearValue(){
    currentValue = null;
    currentIndex = null;
  }
}
