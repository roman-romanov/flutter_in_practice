import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'chapter4/theme.dart';
// import 'chapter4/opacity.dart';
// import 'chapter4/decorated_box.dart';
// import 'chapter4/transform.dart';
// import 'chapter4/animated_container.dart';
// import 'chapter4/animate_crossfade.dart';
// import 'chapter4/animated_default_text_style.dart';
// import 'chapter4/animated_opacity.dart';
// import 'chapter4/animated_position.dart';
// import 'chapter4/position_transition.dart';
// import 'chapter4/slide_transition.dart';
// import 'chapter4/animated_size.dart';
// import 'chapter4/scale_transition.dart';
// import 'chapter4/size_transition.dart';
// import 'chapter4/rotation_transition.dart';
// import 'chapter4/drag_drop.dart';
// import 'package:flutter_in_practice/chapter4/table.dart';
// import 'chapter4/data_table.dart';
// import 'chapter4/paginated_data_table.dart';
// import 'chapter4/grid_view.count.dart';
// import 'chapter4/grid_view.builder.dart';
// import 'chapter4/list_view.builder.dart';
// import 'chapter4/page_view.dart';
// import 'chapter4/circular_progress_indicator.dart';
// import 'chapter4/linear_progress_indicator.dart';
// import 'chapter4/icons.dart';
// import 'chapter4/image.dart';
// import 'chapter4/json_file_hand.dart';
// import 'chapter4/json_file.auto.dart';
// import 'chapter4/chip.dart';
// import 'floating_action_button.dart';
import 'package:flutter_in_practice/chapter4/popup_menu_button.dart';


class Chapter4 extends StatefulWidget {
  final String title;
  Chapter4({Key key, this.title}) : super(key: key);
  @override
  _Chapter4State createState() => _Chapter4State();
}

class _Chapter4State extends State<Chapter4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First', style: TextStyle(fontSize: 25)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Second', style: TextStyle(fontSize: 25)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Third', style: TextStyle(fontSize: 25)),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Flutter in Practice'),
      ),
      body: Column(
        children: [
          // Expanded(child: ThemeApp()),
          // Expanded(child: OpacityApp()),
          // Expanded(child: DecoratedBoxApp()),
          // Expanded(child: TransformApp()),
          // Expanded(child: AnimatedContainerApp()),
          // Expanded(child: AnimatedCrossFadeApp()),
          // Expanded(child: AnimatedDefaultTextStyleApp()),
          // Expanded(child: AnimatedOpacityApp()),
          // Expanded(child: AnimatedPositionApp()),
          // Expanded(child: PositionTransitionApp()),
          // Expanded(child: SlideTransitionApp()),
          // Expanded(child: AnimatedSizeApp()),
          // Expanded(child: ScaleTransitionApp()),
          // Expanded(child: SizeTransitionApp()),
          // Expanded(child: RotationTransitionApp()),
          // Expanded(child: DragDrop()),
          // Expanded(child: TableApp()),
          // Expanded(child: DataTableApp()),
          // Expanded(child: PaginatedDataTableApp()),
          // Expanded(child: GridViewCountApp()),
          // Expanded(child: GridViewBUilderApp()),
          // Expanded(child: ListViewApp()),
          // Expanded(child: PageViewApp()),
          // Expanded(child: CircularProgressIndicatorApp()),
          // Expanded(child: LinearProgressIndicatorApp()),
          // Expanded(child: IconsApp()),
          // Expanded(child: ImageApp()),
          // Expanded(child: JSonApp()),
          // Expanded(child: JSonAutoApp()),
          // Expanded(child: ChipApp()),
          // Expanded(child: FloatingActionButtonApp()),
          Expanded(child: PopUpMenuButtonApp()),
        ],
      ),
    );
  }
}
