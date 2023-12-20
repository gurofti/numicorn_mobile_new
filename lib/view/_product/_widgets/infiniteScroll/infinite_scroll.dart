import 'package:flutter/material.dart';

class InfiniteScroll extends StatefulWidget {
  @override
  _InfiniteScrollState createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  final _scrollController = ScrollController();
  final _list = List.generate(20, (index) => 'Item ${index + 1}');
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMore() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _currentPage++;
        _list.addAll(List.generate(
            20, (index) => 'Item ${index + 1 + _currentPage * 20}'));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      controller: _scrollController,
      itemCount: _list.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(_list[index]),
        );
      },
    );
  }
}
