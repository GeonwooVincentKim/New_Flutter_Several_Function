Iterable<String> getNameInList(List originalList, List<String> list) {
  final List newList = originalList.where((e) => list.contains(e.id)).toList();
  return newList.map((e) => "${e.name}");
}
    