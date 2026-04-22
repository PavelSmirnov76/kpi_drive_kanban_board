library flutter_boardview;

import 'dart:core';

import 'package:flutter_boardview/board_list.dart';
import 'package:flutter_boardview/boardview_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BoardView extends StatefulWidget {
  final List<BoardList>? lists;
  final double width;
  final Widget? middleWidget;
  final double? bottomPadding;
  final bool isSelecting;
  final BoardViewController? boardViewController;
  final int dragDelay;

  final Function(bool)? itemInMiddleWidget;
  final OnDropBottomWidget? onDropItemInMiddleWidget;
  final ScrollController? scrollController;

  const BoardView({
    Key? key,
    this.itemInMiddleWidget,
    this.boardViewController,
    this.dragDelay = 300,
    this.onDropItemInMiddleWidget,
    this.isSelecting = false,
    this.lists,
    this.width = 280,
    this.middleWidget,
    this.bottomPadding,
    this.scrollController,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BoardViewState();
  }
}

typedef OnDropBottomWidget = void Function(
    int? listIndex, int? itemIndex, double percentX);
typedef OnDropItem = void Function(int? listIndex, int? itemIndex);
typedef OnDropList = void Function(int? listIndex);

class BoardViewState extends State<BoardView>
    with AutomaticKeepAliveClientMixin {
  static const double _kBoardEdgeScrollPx = 56.0;

  Widget? draggedItem;
  int? draggedItemIndex;
  int? draggedListIndex;
  double? dx;
  double? dxInit;
  double? dyInit;
  double? dy;
  double? offsetX;
  double? offsetY;
  double? initialX = 0;
  double? initialY = 0;
  double? rightListX;
  double? leftListX;
  double? topListY;
  double? bottomListY;
  double? topItemY;
  double? bottomItemY;
  double? height;
  int? startListIndex;
  int? startItemIndex;

  bool canDrag = true;

  late ScrollController boardViewController;

  List<BoardListState> listStates = [];

  OnDropItem? onDropItem;
  OnDropList? onDropList;

  bool isScrolling = false;

  bool _isInWidget = false;

  final GlobalKey _middleWidgetKey = GlobalKey();

  // ignore: prefer_typing_uninitialized_variables
  var pointer;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.boardViewController != null) {
      widget.boardViewController!.state = this;
    }
    boardViewController = widget.scrollController ?? ScrollController();
  }

  void _refreshListAndItemGeometryAfterMove(int listIndex, int itemIndex) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      try {
        final ls = listStates[listIndex];
        if (!ls.mounted) return;
        final listRender = ls.context.findRenderObject() as RenderBox?;
        if (listRender == null) return;
        final lp = listRender.localToGlobal(Offset.zero);
        leftListX = lp.dx;
        rightListX = lp.dx + listRender.size.width;
        if (itemIndex >= 0 && itemIndex < ls.itemStates.length) {
          final st = ls.itemStates[itemIndex];
          if (st.mounted) {
            final ir = st.context.findRenderObject() as RenderBox?;
            if (ir != null) {
              final ip = ir.localToGlobal(Offset.zero);
              topItemY = ip.dy;
              bottomItemY = ip.dy + ir.size.height;
            }
          }
        }
      } catch (_) {}
      Future.delayed(Duration(milliseconds: widget.dragDelay), () {
        if (mounted) canDrag = true;
      });
    });
  }

  void _refreshListGeometryOnlyAfterMove(int listIndex) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      try {
        final ls = listStates[listIndex];
        if (!ls.mounted) return;
        final listRender = ls.context.findRenderObject() as RenderBox?;
        if (listRender == null) return;
        final lp = listRender.localToGlobal(Offset.zero);
        leftListX = lp.dx;
        rightListX = lp.dx + listRender.size.width;
      } catch (_) {}
      Future.delayed(Duration(milliseconds: widget.dragDelay), () {
        if (mounted) canDrag = true;
      });
    });
  }

  void moveDown() {
    if (topItemY != null) {
      topItemY = topItemY! +
          listStates[draggedListIndex!]
              .itemStates[draggedItemIndex! + 1]
              .height;
    }
    if (bottomItemY != null) {
      bottomItemY = bottomItemY! +
          listStates[draggedListIndex!]
              .itemStates[draggedItemIndex! + 1]
              .height;
    }
    var item = widget.lists![draggedListIndex!].items![draggedItemIndex!];
    widget.lists![draggedListIndex!].items!.removeAt(draggedItemIndex!);
    var itemState = listStates[draggedListIndex!].itemStates[draggedItemIndex!];
    listStates[draggedListIndex!].itemStates.removeAt(draggedItemIndex!);
    if (draggedItemIndex != null) {
      draggedItemIndex = draggedItemIndex! + 1;
    }
    widget.lists![draggedListIndex!].items!.insert(draggedItemIndex!, item);
    listStates[draggedListIndex!]
        .itemStates
        .insert(draggedItemIndex!, itemState);
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
  }

  void moveUp() {
    if (topItemY != null) {
      topItemY = topItemY! -
          listStates[draggedListIndex!]
              .itemStates[draggedItemIndex! - 1]
              .height;
    }
    if (bottomItemY != null) {
      bottomItemY = bottomItemY! -
          listStates[draggedListIndex!]
              .itemStates[draggedItemIndex! - 1]
              .height;
    }
    var item = widget.lists![draggedListIndex!].items![draggedItemIndex!];
    widget.lists![draggedListIndex!].items!.removeAt(draggedItemIndex!);
    var itemState = listStates[draggedListIndex!].itemStates[draggedItemIndex!];
    listStates[draggedListIndex!].itemStates.removeAt(draggedItemIndex!);
    if (draggedItemIndex != null) {
      draggedItemIndex = draggedItemIndex! - 1;
    }
    widget.lists![draggedListIndex!].items!.insert(draggedItemIndex!, item);
    listStates[draggedListIndex!]
        .itemStates
        .insert(draggedItemIndex!, itemState);
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
  }

  void moveListRight() {
    var list = widget.lists![draggedListIndex!];
    var listState = listStates[draggedListIndex!];
    widget.lists!.removeAt(draggedListIndex!);
    listStates.removeAt(draggedListIndex!);
    if (draggedListIndex != null) {
      draggedListIndex = draggedListIndex! + 1;
    }
    widget.lists!.insert(draggedListIndex!, list);
    listStates.insert(draggedListIndex!, listState);
    canDrag = false;
    _refreshListGeometryOnlyAfterMove(draggedListIndex!);
    if (mounted) {
      setState(() {});
    }
  }

  void moveRight() {
    var item = widget.lists![draggedListIndex!].items![draggedItemIndex!];
    var itemState = listStates[draggedListIndex!].itemStates[draggedItemIndex!];
    widget.lists![draggedListIndex!].items!.removeAt(draggedItemIndex!);
    listStates[draggedListIndex!].itemStates.removeAt(draggedItemIndex!);
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
    if (draggedListIndex != null) {
      draggedListIndex = draggedListIndex! + 1;
    }
    double closestValue = 10000;
    draggedItemIndex = 0;
    for (int i = 0; i < listStates[draggedListIndex!].itemStates.length; i++) {
      if (listStates[draggedListIndex!].itemStates[i].mounted) {
        RenderBox box = listStates[draggedListIndex!]
            .itemStates[i]
            .context
            .findRenderObject() as RenderBox;
        Offset pos = box.localToGlobal(Offset.zero);
        var temp = (pos.dy - dy! + (box.size.height / 2)).abs();
        if (temp < closestValue) {
          closestValue = temp;
          draggedItemIndex = i;
          dyInit = dy;
        }
      }
    }
    widget.lists![draggedListIndex!].items!.insert(draggedItemIndex!, item);
    listStates[draggedListIndex!]
        .itemStates
        .insert(draggedItemIndex!, itemState);
    canDrag = false;
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
    _refreshListAndItemGeometryAfterMove(draggedListIndex!, draggedItemIndex!);
    if (mounted) {
      setState(() {});
    }
  }

  void moveListLeft() {
    var list = widget.lists![draggedListIndex!];
    var listState = listStates[draggedListIndex!];
    widget.lists!.removeAt(draggedListIndex!);
    listStates.removeAt(draggedListIndex!);
    if (draggedListIndex != null) {
      draggedListIndex = draggedListIndex! - 1;
    }
    widget.lists!.insert(draggedListIndex!, list);
    listStates.insert(draggedListIndex!, listState);
    canDrag = false;
    _refreshListGeometryOnlyAfterMove(draggedListIndex!);
    if (mounted) {
      setState(() {});
    }
  }

  void moveLeft() {
    var item = widget.lists![draggedListIndex!].items![draggedItemIndex!];
    var itemState = listStates[draggedListIndex!].itemStates[draggedItemIndex!];
    widget.lists![draggedListIndex!].items!.removeAt(draggedItemIndex!);
    listStates[draggedListIndex!].itemStates.removeAt(draggedItemIndex!);
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
    if (draggedListIndex != null) {
      draggedListIndex = draggedListIndex! - 1;
    }
    double closestValue = 10000;
    draggedItemIndex = 0;
    for (int i = 0; i < listStates[draggedListIndex!].itemStates.length; i++) {
      if (listStates[draggedListIndex!].itemStates[i].mounted) {
        RenderBox box = listStates[draggedListIndex!]
            .itemStates[i]
            .context
            .findRenderObject() as RenderBox;
        Offset pos = box.localToGlobal(Offset.zero);
        var temp = (pos.dy - dy! + (box.size.height / 2)).abs();
        if (temp < closestValue) {
          closestValue = temp;
          draggedItemIndex = i;
          dyInit = dy;
        }
      }
    }
    widget.lists![draggedListIndex!].items!.insert(draggedItemIndex!, item);
    listStates[draggedListIndex!]
        .itemStates
        .insert(draggedItemIndex!, itemState);
    canDrag = false;
    if (listStates[draggedListIndex!].mounted) {
      listStates[draggedListIndex!].setState(() {});
    }
    _refreshListAndItemGeometryAfterMove(draggedListIndex!, draggedItemIndex!);
    if (mounted) {
      setState(() {});
    }
  }

  bool shown = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (kDebugMode) {
      print("dy:$dy");
      print("topListY:$topListY");
      print("bottomListY:$bottomListY");
    }
    if (boardViewController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((Duration duration) {
        try {
          boardViewController.position.didUpdateScrollPositionBy(0);
        } catch (e) {
          if (kDebugMode) {
            print(e.toString());
          }
        }
        bool scrollShown = boardViewController.position.maxScrollExtent != 0;
        if (scrollShown != shown) {
          setState(() {
            shown = scrollShown;
          });
        }
      });
    }
    Widget listWidget = ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: widget.lists!.length,
      scrollDirection: Axis.horizontal,
      controller: boardViewController,
      itemBuilder: (BuildContext context, int index) {
        if (widget.lists![index].boardView == null) {
          widget.lists![index] = BoardList(
            key: widget.lists![index].key,
            items: widget.lists![index].items,
            headerBackgroundColor: widget.lists![index].headerBackgroundColor,
            backgroundColor: widget.lists![index].backgroundColor,
            footer: widget.lists![index].footer,
            header: widget.lists![index].header,
            boardView: this,
            draggable: widget.lists![index].draggable,
            onDropList: widget.lists![index].onDropList,
            onTapList: widget.lists![index].onTapList,
            onStartDragList: widget.lists![index].onStartDragList,
            listBuilder: widget.lists![index].listBuilder,
          );
        }
        if (widget.lists![index].index != index) {
          widget.lists![index] = BoardList(
            key: widget.lists![index].key,
            items: widget.lists![index].items,
            headerBackgroundColor: widget.lists![index].headerBackgroundColor,
            backgroundColor: widget.lists![index].backgroundColor,
            footer: widget.lists![index].footer,
            header: widget.lists![index].header,
            boardView: this,
            draggable: widget.lists![index].draggable,
            index: index,
            onDropList: widget.lists![index].onDropList,
            onTapList: widget.lists![index].onTapList,
            onStartDragList: widget.lists![index].onStartDragList,
            listBuilder: widget.lists![index].listBuilder,
          );
        }

        var temp = Container(
            width: widget.width,
            padding: EdgeInsets.fromLTRB(0, 0, 0, widget.bottomPadding ?? 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[Expanded(child: widget.lists![index])],
            ));
        if (draggedListIndex == index && draggedItemIndex == null) {
          return Opacity(
            opacity: 0.0,
            child: temp,
          );
        } else {
          return temp;
        }
      },
    );

    List<Widget> stackWidgets = <Widget>[listWidget];
    bool isInBottomWidget = false;
    if (dy != null) {
      if (MediaQuery.of(context).size.height - dy! < 80) {
        isInBottomWidget = true;
      }
    }
    if (widget.itemInMiddleWidget != null && _isInWidget != isInBottomWidget) {
      widget.itemInMiddleWidget!(isInBottomWidget);
      _isInWidget = isInBottomWidget;
    }
    if (initialX != null &&
        initialY != null &&
        offsetX != null &&
        offsetY != null &&
        dx != null &&
        dy != null &&
        height != null) {
      if (canDrag && dxInit != null && dyInit != null && !isInBottomWidget) {
        if (draggedItemIndex != null &&
            draggedItem != null &&
            topItemY != null &&
            bottomItemY != null) {
          if (boardViewController.hasClients &&
              _shouldScrollBoardLeft(context, dx!) &&
              boardViewController.position.pixels >
                  boardViewController.position.minScrollExtent) {
            boardViewController.animateTo(
                boardViewController.position.pixels - 5,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease);
            if (listStates[draggedListIndex!].mounted) {
              RenderBox object = listStates[draggedListIndex!]
                  .context
                  .findRenderObject() as RenderBox;
              Offset pos = object.localToGlobal(Offset.zero);
              leftListX = pos.dx;
              rightListX = pos.dx + object.size.width;
            }
          }
          if (boardViewController.hasClients &&
              _shouldScrollBoardRight(context, dx!) &&
              boardViewController.position.pixels <
                  boardViewController.position.maxScrollExtent) {
            boardViewController.animateTo(
                boardViewController.position.pixels + 5,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease);
            if (listStates[draggedListIndex!].mounted) {
              RenderBox object = listStates[draggedListIndex!]
                  .context
                  .findRenderObject() as RenderBox;
              Offset pos = object.localToGlobal(Offset.zero);
              leftListX = pos.dx;
              rightListX = pos.dx + object.size.width;
            }
          }
          if (0 <= draggedListIndex! - 1 && dx! < leftListX!) {
            moveLeft();
          }
          if (widget.lists!.length > draggedListIndex! + 1 &&
              dx! > rightListX!) {
            moveRight();
          }
          if (dy! < topListY! + 70) {
            if (listStates[draggedListIndex!].boardListController.hasClients &&
                !isScrolling) {
              isScrolling = true;
              double pos = listStates[draggedListIndex!]
                  .boardListController
                  .position
                  .pixels;
              listStates[draggedListIndex!]
                  .boardListController
                  .animateTo(
                      listStates[draggedListIndex!]
                              .boardListController
                              .position
                              .pixels -
                          5,
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.ease)
                  .whenComplete(() {
                pos -= listStates[draggedListIndex!]
                    .boardListController
                    .position
                    .pixels;
                initialY ??= 0;
                isScrolling = false;
                if (topItemY != null) {
                  topItemY = topItemY! + pos;
                }
                if (bottomItemY != null) {
                  bottomItemY = bottomItemY! + pos;
                }
                if (mounted) {
                  setState(() {});
                }
              });
            }
          }
          if (0 <= draggedItemIndex! - 1 &&
              dy! <
                  topItemY! -
                      listStates[draggedListIndex!]
                              .itemStates[draggedItemIndex! - 1]
                              .height /
                          2) {
            moveUp();
          }
          double? tempBottom = bottomListY;
          if (widget.middleWidget != null) {
            if (_middleWidgetKey.currentContext != null) {
              RenderBox box = _middleWidgetKey.currentContext!
                  .findRenderObject() as RenderBox;
              tempBottom = box.size.height;
              if (kDebugMode) {
                print("tempBot?tom:$tempBottom");
              }
            }
          }
          if (dy! > tempBottom! - 70) {
            if (listStates[draggedListIndex!].boardListController.hasClients) {
              isScrolling = true;
              double pos = listStates[draggedListIndex!]
                  .boardListController
                  .position
                  .pixels;
              listStates[draggedListIndex!]
                  .boardListController
                  .animateTo(
                      listStates[draggedListIndex!]
                              .boardListController
                              .position
                              .pixels +
                          5,
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.ease)
                  .whenComplete(() {
                pos -= listStates[draggedListIndex!]
                    .boardListController
                    .position
                    .pixels;
                initialY ??= 0;
                isScrolling = false;
                if (topItemY != null) {
                  topItemY = topItemY! + pos;
                }
                if (bottomItemY != null) {
                  bottomItemY = bottomItemY! + pos;
                }
                if (mounted) {
                  setState(() {});
                }
              });
            }
          }
          if (widget.lists![draggedListIndex!].items!.length >
                  draggedItemIndex! + 1 &&
              dy! >
                  bottomItemY! +
                      listStates[draggedListIndex!]
                              .itemStates[draggedItemIndex! + 1]
                              .height /
                          2) {
            moveDown();
          }
        } else {
          if (boardViewController.hasClients &&
              _shouldScrollBoardLeft(context, dx!) &&
              boardViewController.position.pixels >
                  boardViewController.position.minScrollExtent) {
            boardViewController.animateTo(
                boardViewController.position.pixels - 5,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease);
            if (leftListX != null) {
              leftListX = leftListX! + 5;
            }
            if (rightListX != null) {
              rightListX = rightListX! + 5;
            }
          }

          if (boardViewController.hasClients &&
              _shouldScrollBoardRight(context, dx!) &&
              boardViewController.position.pixels <
                  boardViewController.position.maxScrollExtent) {
            boardViewController.animateTo(
                boardViewController.position.pixels + 5,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease);
            if (leftListX != null) {
              leftListX = leftListX! - 5;
            }
            if (rightListX != null) {
              rightListX = rightListX! - 5;
            }
          }
          if (widget.lists!.length > draggedListIndex! + 1 &&
              dx! > rightListX!) {
            moveListRight();
          }
          if (0 <= draggedListIndex! - 1 && dx! < leftListX!) {
            moveListLeft();
          }
        }
      }
      if (widget.middleWidget != null) {
        stackWidgets
            .add(Container(key: _middleWidgetKey, child: widget.middleWidget));
      }
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
      stackWidgets.add(Positioned(
        width: widget.width,
        height: height,
        left: (dx! - offsetX!) + initialX!,
        top: (dy! - offsetY!) + initialY!,
        child: Opacity(opacity: .7, child: draggedItem),
      ));
    }

    return Listener(
        onPointerMove: (opm) {
          if (draggedItem != null) {
            final box = context.findRenderObject() as RenderBox?;
            if (box != null) {
              final g = box.localToGlobal(opm.position);
              dxInit ??= g.dx;
              dyInit ??= g.dy;
              dx = g.dx;
              dy = g.dy;
            }
            if (mounted) {
              setState(() {});
            }
          }
        },
        onPointerDown: (opd) {
          RenderBox box = context.findRenderObject() as RenderBox;
          Offset pos = box.localToGlobal(opd.position);
          offsetX = pos.dx;
          offsetY = pos.dy;
          pointer = opd;
          if (mounted) {
            setState(() {});
          }
        },
        onPointerUp: (opu) {
          if (onDropItem != null) {
            int? tempDraggedItemIndex = draggedItemIndex;
            int? tempDraggedListIndex = draggedListIndex;
            int? startDraggedItemIndex = startItemIndex;
            int? startDraggedListIndex = startListIndex;

            if (_isInWidget && widget.onDropItemInMiddleWidget != null) {
              onDropItem!(startDraggedListIndex, startDraggedItemIndex);
              widget.onDropItemInMiddleWidget!(
                  startDraggedListIndex,
                  startDraggedItemIndex,
                  opu.position.dx / MediaQuery.of(context).size.width);
            } else {
              onDropItem!(tempDraggedListIndex, tempDraggedItemIndex);
            }
          }
          if (onDropList != null) {
            int? tempDraggedListIndex = draggedListIndex;
            if (_isInWidget && widget.onDropItemInMiddleWidget != null) {
              onDropList!(tempDraggedListIndex);
              widget.onDropItemInMiddleWidget!(tempDraggedListIndex, null,
                  opu.position.dx / MediaQuery.of(context).size.width);
            } else {
              onDropList!(tempDraggedListIndex);
            }
          }
          draggedItem = null;
          offsetX = null;
          offsetY = null;
          initialX = null;
          initialY = null;
          dx = null;
          dy = null;
          draggedItemIndex = null;
          draggedListIndex = null;
          onDropItem = null;
          onDropList = null;
          dxInit = null;
          dyInit = null;
          leftListX = null;
          rightListX = null;
          topListY = null;
          bottomListY = null;
          topItemY = null;
          bottomItemY = null;
          startListIndex = null;
          startItemIndex = null;
          if (mounted) {
            setState(() {});
          }
        },
        child: Stack(
          children: stackWidgets,
        ));
  }

  void run() {
    if (pointer != null && mounted) {
      final box = context.findRenderObject() as RenderBox?;
      if (box != null) {
        final g = box.localToGlobal(pointer.position);
        dx = g.dx;
        dy = g.dy;
      }
      setState(() {});
    }
  }

  bool _shouldScrollBoardLeft(BuildContext context, double pointerDx) {
    final m = MediaQuery.of(context);
    return pointerDx < m.padding.left + _kBoardEdgeScrollPx;
  }

  bool _shouldScrollBoardRight(BuildContext context, double pointerDx) {
    final m = MediaQuery.of(context);
    return pointerDx > m.size.width - m.padding.right - _kBoardEdgeScrollPx;
  }
}
