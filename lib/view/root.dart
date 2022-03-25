import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:layout_practice/view/grid_view/gv.dart';
import 'package:layout_practice/view/list_view/lv.dart';
import 'package:layout_practice/view/single_view/sv.dart';

// Providerの作成（ページを番号で管理する）
final page_state_provider = StateProvider((ref) => 0);

class Root extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Providerの監視
    final page_state = ref.watch(page_state_provider.notifier);

    // BottomNavigationBarの設計
    List<String> keys = ['GritView', 'ListView', 'SingleView'];
    List<Icon> icons = [
      Icon(Icons.grid_4x4),
      Icon(Icons.list),
      Icon(Icons.swipe_down),
    ];
    List<Widget> pages = [Gv(), Lv(), Sv()];
    List<BottomNavigationBarItem> navi_items = [];
    for (int i = 0; i < keys.length; i++) {
      navi_items.add(BottomNavigationBarItem(icon: icons[i], label: keys[i]));
    }

    return Scaffold(
      appBar: AppBar(title: Text('Layout Practice')),
      body: pages[page_state.state],
      bottomNavigationBar: BottomNavigationBar(
        items: navi_items,
        currentIndex: ref.watch(page_state_provider),
        onTap: (index) {
          // ページ番号を切り替える
          page_state.state = index;
          print(page_state.state);
        },
      ),
    );
  }
}
