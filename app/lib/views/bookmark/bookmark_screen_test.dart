// bookmark_screen.dart
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkScreenText extends StatelessWidget {
  const BookmarkScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkCubit, BookmarkState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BookmarkCubit.get(context);
        var bookmarks = BookmarkCubit.get(context).bookmarks;
        var hadithBookmarks = BookmarkCubit.get(context).hadithBookmarks;
        var surahBookmarks = BookmarkCubit.get(context).surahBookmarks;
        var zhkarBookmarks = BookmarkCubit.get(context).zhkarBookmarks;

        debugPrint("bookmarks Len: ${bookmarks.length}");

        return Scaffold(
          appBar: AppBar(
            title: const Text('Your App'),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  _showClearAllConfirmationDialog(context, cubit);
                },
              ),
            ],
          ),
          body: cubit.bookmarks.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Text("surahBookmarks ${surahBookmarks.length}"),
                    Container(
                      color: Colors.amber,
                      height: 100,
                      child: surahBookmarks.isEmpty
                          ? const Text("SurahBookmarks Is Empty")
                          : ListView.builder(
                              itemCount: surahBookmarks.length,
                              itemBuilder: (context, index) {
                                final bookmark = surahBookmarks[index];
                                return _cardDismissible(
                                    bookmark, cubit, index, context);
                              },
                            ),
                    ),
                    Text("hadithBookmarks ${hadithBookmarks.length}"),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      child: hadithBookmarks.isEmpty
                          ? const Text("hadithBookmarks Is Empty")
                          : ListView.builder(
                              itemCount: hadithBookmarks.length,
                              itemBuilder: (context, index) {
                                final bookmark = hadithBookmarks[index];
                                return _cardDismissible(
                                    bookmark, cubit, index, context);
                              },
                            ),
                    ),
                    Text("zhkarBookmarks ${hadithBookmarks.length}"),
                    Container(
                      color: Colors.cyan,
                      height: 100,
                      child: zhkarBookmarks.isEmpty
                          ? const Text("zhkarBookmarks Is Empty")
                          : ListView.builder(
                              itemCount: zhkarBookmarks.length,
                              itemBuilder: (context, index) {
                                final bookmark = zhkarBookmarks[index];
                                return _cardDismissible(
                                    bookmark, cubit, index, context);
                              },
                            ),
                    ),
                  ],
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              cubit.addBookmark(BookmarkModel.dummyBookmarks[6]);
              cubit.getBookmarks();
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }

  Dismissible _cardDismissible(BookmarkModel bookmark, BookmarkCubit cubit,
      int index, BuildContext context) {
    return Dismissible(
      key: Key(bookmark.text), // Provide a unique key for each item
      onDismissed: (direction) {
        cubit.deleteBookmarkByText(bookmark.text);
        cubit.getBookmarks();
      },
      confirmDismiss: (DismissDirection direction) async {
        return await _showClearItemConfirmationDialog(context);
      },
      background: Container(
        // color: Colors.red,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffff0844),
              Color(0xffffb199),
            ], // You can adjust the gradient colors
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: ListTile(
        title: Text(bookmark.text),
        subtitle: Text(bookmark.type),
        trailing: GestureDetector(
          onTap: () {
            // Handle tap on the trailing icon if needed
          },
          child: Icon(
            cubit.isBookmarked(bookmark.text)
                ? Icons.bookmark_rounded
                : Icons.bookmark_outline_rounded,
          ),
        ),
        onTap: () {
          // Handle onTap for the entire ListTile if needed
        },
        // Add more UI elements based on your design
      ),
    );
  }

  Future<bool?> _showClearItemConfirmationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure you wish to delete this item?"),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text("Confirm")),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _showClearAllConfirmationDialog(BuildContext context, cubit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Clear All Bookmarks'),
          content: const Text('Are you sure you want to clear all bookmarks?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                cubit.clearAllBookmarks();
                cubit.getBookmarks();
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Clear All'),
            ),
          ],
        );
      },
    );
  }
}
