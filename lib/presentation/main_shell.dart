import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/content/content_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/market/market_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/popup/popup_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/portfolio/portfolio_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/pages/article_page.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/pages/home_page.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/pages/portfolio_page.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/pages/video_page.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final ContentRepository contentRepository =
        context.read<ContentRepository>();
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<MarketBloc>(
          create: (BuildContext context) => MarketBloc(),
        ),
        BlocProvider<PopupBloc>(
          create:
              (BuildContext context) =>
                  PopupBloc(context.read<PopupRepository>())
                    ..add(const PopupRequested()),
        ),
        BlocProvider<CryptoArticleBloc>(
          create:
              (BuildContext context) =>
                  CryptoArticleBloc(contentRepository)
                    ..add(const ContentRequested()),
        ),
        BlocProvider<NewsArticleBloc>(
          create:
              (BuildContext context) =>
                  NewsArticleBloc(contentRepository)
                    ..add(const ContentRequested()),
        ),
        BlocProvider<VideoContentBloc>(
          create:
              (BuildContext context) =>
                  VideoContentBloc(contentRepository)
                    ..add(const ContentRequested()),
        ),
        BlocProvider<PortfolioBloc>(
          create:
              (BuildContext context) =>
                  PortfolioBloc(context.read<PortfolioRepository>())
                    ..add(const PortfolioRequested()),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final List<Widget> pages = <Widget>[
            const HomePage(),
            const ArticlePage(title: 'Crypto 기사', source: ArticleSource.crypto),
            const ArticlePage(title: '네이버 뉴스', source: ArticleSource.news),
            const VideoPage(),
            const PortfolioPage(),
          ];
          return Scaffold(
            body: IndexedStack(index: _index, children: pages),
            bottomNavigationBar: NavigationBar(
              selectedIndex: _index,
              onDestinationSelected: (int value) {
                setState(() => _index = value);
              },
              destinations: const <NavigationDestination>[
                NavigationDestination(icon: Icon(Icons.show_chart), label: '홈'),
                NavigationDestination(
                  icon: Icon(Icons.article_outlined),
                  label: '기사',
                ),
                NavigationDestination(icon: Icon(Icons.newspaper), label: '뉴스'),
                NavigationDestination(
                  icon: Icon(Icons.play_circle_outline),
                  label: '유튜브',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  label: '포트폴리오',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
