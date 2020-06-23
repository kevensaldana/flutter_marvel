import 'package:flutter/material.dart';
import 'package:flutter_marvel/colors/brand.dart';
import 'package:flutter_marvel/features/list_characters/presentation/states/home_page_bloc.dart';
import 'package:flutter_marvel/features/list_characters/presentation/states/home_page_state.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  final String title;
  final HomePageBloc bloc;

  HomePage({Key key, this.title, this.bloc}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomePageState>(
        stream: widget.bloc.stateList,
        builder: (BuildContext context, AsyncSnapshot<HomePageState> snapshot) {
          final state = snapshot.data;

          return Scaffold(
            backgroundColor: ColorsApp.background,
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 120.0,
                  floating: false,
                  pinned: true,
                  elevation: 50,
                  backgroundColor: ColorsApp.primary,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('Characters',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                      background: Container(
                        color: ColorsApp.background,
                      )),
                ),
                _buildChild(state)
              ],
            ),
          );
        });
  }

  Widget _buildChild(HomePageState state) {
    if (state is HomePageLoading) {
      return SliverToBoxAdapter(
        child: SizedBox(
          child: Center(
            child: Text('Cargando',
                style: TextStyle(color: ColorsApp.textPrimary, fontSize: 30)),
          ),
        ),
      );
    } else if (state is HomePageError) {
      return SliverToBoxAdapter(
        child: SizedBox(
          height: 1000,
          child: Center(
            child: Text('Hubo un error',
                style: TextStyle(color: ColorsApp.textPrimary, fontSize: 30)),
          ),
        ),
      );
    } else if (state is HomePagePopulated) {
      final list = state.result.result;
      return SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            margin: EdgeInsets.all(2),
            child: GestureDetector(
              child: FadeInImage.memoryNetwork(
                  height: 300,
                  placeholder: kTransparentImage,
                  image: list[index].image),
            ),
          ),
          childCount: list.length,
        ),
      );
    }
    throw Exception('${state.runtimeType} is not supported');
  }
}
