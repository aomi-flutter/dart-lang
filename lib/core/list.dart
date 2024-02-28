extension ListExtension<T> on List<T> {

  List<T> joinWith(T separator) {
    if (isEmpty) {
      return [];
    }

    List<T> result = [];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) {
        result.add(separator);
      }
    }
    return result;
  }

  ///
  T getOrDefault(int index, T defaultValue) {
    return index < this.length ? this[index] : defaultValue;
  }

}