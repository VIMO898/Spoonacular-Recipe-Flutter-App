import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/selectable_list_tile.dart';
import 'package:flutter/material.dart';

import '../models/basic_info_model.dart';

class SeletableListViewScreen extends StatefulWidget {
  final String title;
  final List<BasicInfoModel> allSelectables;
  final List<BasicInfoModel> selectedSelectables;
  const SeletableListViewScreen({
    super.key,
    required this.title,
    required this.allSelectables,
    required this.selectedSelectables,
  });

  @override
  State<SeletableListViewScreen> createState() =>
      _SeletableListViewScreenState();
}

class _SeletableListViewScreenState extends State<SeletableListViewScreen> {
  late List<BasicInfoModel> _selectedSelectables;
  List<BasicInfoModel> _searchedSelectables = [];
  bool _searching = false;
  String _searchedQuery = '';
  @override
  void initState() {
    super.initState();
    _selectedSelectables = widget.selectedSelectables;
  }

  void _handleSelectSelectable(
    bool updatedValue,
    BasicInfoModel selectableInfo,
  ) {
    updatedValue
        ? _selectedSelectables.remove(selectableInfo)
        : _selectedSelectables.add(selectableInfo);
    setState(() {});
  }

  void _handlePopScreen() {
    NavHelper.pop(context, _selectedSelectables);
  }

  void _handleSearching(bool enableSearching) {
    _searching = enableSearching;
    setState(() {});
  }

  void _handleSearchSelectables(String newQuery) {
    _searchedSelectables = widget.allSelectables
        .where((s) => s.name.contains(newQuery))
        .toList();
    _searchedQuery = newQuery;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: _handlePopScreen,
          icon: Icon(Icons.arrow_back),
        ),
        title: !_searching
            ? Text(widget.title)
            : TextField(
                style: theme.appBarTheme.titleTextStyle,
                onChanged: _handleSearchSelectables,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
        actions: [
          if (_searching)
            IconButton(
              onPressed: () => _handleSearching(false),
              icon: Icon(Icons.close_outlined, size: 26),
            ),
          if (!_searching)
            IconButton(
              onPressed: () => _handleSearching(true),
              icon: Icon(Icons.search_outlined, size: 26),
            ),
        ],
      ),
      body: _buildSelectableListview(
        _searching && _searchedQuery.isNotEmpty
            ? _searchedSelectables
            : widget.allSelectables,
      ),
    );
  }

  ListView _buildSelectableListview(List<BasicInfoModel> selectables) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
      itemCount: selectables.length,
      itemBuilder: (context, index) {
        final currSelectable = selectables[index];
        final isSelected = _selectedSelectables.contains(currSelectable);
        final isLast = index == (widget.allSelectables.length - 1);
        return SelectableListTile(
          currSelectable,
          isSelected: isSelected,
          isLast: isLast,
          onSelect: (_) => _handleSelectSelectable(isSelected, currSelectable),
        );
      },
    );
  }
}
