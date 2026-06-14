import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/portfolio/portfolio_bloc.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _averagePriceController = TextEditingController();
  final TextEditingController _memoController = TextEditingController();
  bool _initialized = false;

  @override
  void dispose() {
    _quantityController.dispose();
    _averagePriceController.dispose();
    _memoController.dispose();
    super.dispose();
  }

  void _save(BuildContext context) {
    final Portfolio portfolio = Portfolio(
      quantity: double.tryParse(_quantityController.text) ?? 0,
      averagePrice: double.tryParse(_averagePriceController.text) ?? 0,
      memo: _memoController.text,
    );
    context.read<PortfolioBloc>().add(PortfolioSaved(portfolio));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('포트폴리오')),
      body: BlocConsumer<PortfolioBloc, PortfolioState>(
        listener: (BuildContext context, PortfolioState state) {
          if (!_initialized && !state.loading) {
            _initialized = true;
            _quantityController.text = '${state.portfolio.quantity}';
            _averagePriceController.text = '${state.portfolio.averagePrice}';
            _memoController.text = state.portfolio.memo;
          }
          if (state.error.isNotEmpty) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (BuildContext context, PortfolioState state) {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              if (state.isOffline)
                Card(
                  color: Theme.of(context).colorScheme.errorContainer,
                  child: ListTile(
                    leading: const Icon(Icons.cloud_off),
                    title: const Text('오프라인 데이터 표시 중'),
                    subtitle: Text(
                      state.hasPendingSync
                          ? '변경사항은 다음 연결 때 자동 동기화됩니다.'
                          : '마지막으로 저장된 데이터를 표시합니다.',
                    ),
                  ),
                ),
              if (state.isOffline) const SizedBox(height: 12),
              Text(
                '총 투자금액 ${NumberFormat('#,##0').format(state.portfolio.totalInvested)}원',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'XRP 수량',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _averagePriceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '평균 매수가',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _memoController,
                decoration: const InputDecoration(
                  labelText: '메모',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: state.loading ? null : () => _save(context),
                child:
                    state.loading
                        ? const CircularProgressIndicator()
                        : const Text('저장'),
              ),
            ],
          );
        },
      ),
    );
  }
}
