// Bài thực hành: Sử dụng các kiểu dữ liệu List, Set và Map trong Dart

// Họ tên: NGUYỄN MINH QUANG
// MSSV: 2121050844

void main() {
  // 1. Khởi tạo và sử dụng List

  // Khởi tạo list rỗng và list có giá trị ban đầu
  List<int> listBanDau = [1, 2, 3, 4, 5];

  // Truy cập, thêm, sửa, xóa phần tử trong list
  int elementDauTien = listBanDau[0];
  listBanDau.add(6);
  listBanDau[2] = 7;
  int elementDaXoa = listBanDau.removeAt(1);

  // Sắp xếp và lọc list
  listBanDau.sort();
  List<int> listLoc = listBanDau.where((element) => element % 2 == 0).toList();

  // In list sau khi thao tác
  print("Danh sách ban đầu: $listBanDau");
  print("Phần tử đầu tiên: $elementDauTien");
  print("Danh sách sau khi thêm phần tử 6: $listBanDau");
  print("Danh sách sau khi sửa phần tử ở vị trí 2: $listBanDau");
  print("Phần tử đã bị xóa: $elementDaXoa");
  print("Danh sách sau khi lọc các số chẵn: $listLoc");

  // 2. Khởi tạo và sử dụng Set

  // Khởi tạo set rỗng và set có giá trị ban đầu
  Set<int> setBanDau = {1, 2, 3, 4, 5};

  // Thêm, xóa phần tử trong set
  setBanDau.add(6);
  setBanDau.remove(3);

  // Các phép toán trên set: union, intersection, difference
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};
  Set<int> setHop = set1.union(set2);
  Set<int> setGiao = set1.intersection(set2);
  Set<int> setHieu = set1.difference(set2);

  // In set sau khi thao tác
  print("Tập hợp ban đầu: $setBanDau");
  print("Tập hợp sau khi thêm phần tử 6: $setBanDau");
  print("Tập hợp sau khi xóa phần tử 3: $setBanDau");
  print("Tập hợp hợp của set1 và set2: $setHop");
  print("Tập hợp giao của set1 và set2: $setGiao");
  print("Tập hợp hiệu của set1 và set2: $setHieu");

  // 3. Khởi tạo và sử dụng Map

  // Khởi tạo map rỗng và map có giá trị ban đầu
  Map<String, dynamic> mapBanDau = {
    'ten': 'Quang',
    'tuoi': 20,
    'thanhPho': 'New York'
  };

  // Thêm, sửa, xóa phần tử trong map
  mapBanDau['ngheNghiep'] = 'Kỹ sư';
  mapBanDau['tuoi'] = 21;
  mapBanDau.remove('thanhPho');

  // Duyệt các phần tử trong map và in chúng ra
  mapBanDau.forEach((key, value) {
    print('$key: $value');
  });
}
