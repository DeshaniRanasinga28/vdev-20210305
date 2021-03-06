import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:vdev/app/provider/item_provider.dart';

List<SingleChildWidget> providers = [
   ChangeNotifierProvider<ItemProviderModel>(create: (_) => ItemProviderModel()),
];