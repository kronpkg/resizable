enum ListFieldType {
  number(valueName: 'Номер', key: '_NUMBER'),
  date(valueName: 'Дата', key: '_DATE'),
  productName(valueName: 'Наименование', key: '_PRODUCTNAME'),
  productCode(valueName: 'Код', key: '_PRODUCTCODE'),
  productArticle(valueName: 'Артикул', key: '_PRODUCTARTICLE'),
  productBalance(valueName: 'Баланс', key: '_PRODUCTBALANCE');

  final String valueName;
  final String key;
  const ListFieldType({required this.valueName, required this.key});
}
