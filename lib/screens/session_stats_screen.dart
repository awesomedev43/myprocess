import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/model/providers.dart';

class SessionStatsScreen extends ConsumerStatefulWidget {
  const SessionStatsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SessionStatsScreen> createState() => _SessionStatsScreenState();
}

class _SessionStatsScreenState extends ConsumerState<SessionStatsScreen> {
  List<charts.Series<SessionInstance, DateTime>> createTimeSeriesData(
      Session session) {
    final data =
        ref.watch(GetCompletedSessionInstancesForSessionProvider(session));
    return [
      charts.Series<SessionInstance, DateTime>(
        id: 'Run Time',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (SessionInstance instance, _) => instance.start!,
        measureFn: (SessionInstance instance, _) =>
            instance.end!.difference(instance.start!).inSeconds,
        data: data.value ?? [],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final session = ModalRoute.of(context)!.settings.arguments as Session;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stats for Session: ${session.name}',
        ),
      ),
      body: Center(
        child: charts.TimeSeriesChart(createTimeSeriesData(session),
            domainAxis: const charts.EndPointsTimeAxisSpec(),
            animate: true,
            dateTimeFactory: const charts.LocalDateTimeFactory(),
            defaultRenderer: charts.LineRendererConfig(includePoints: true)),
      ),
    );
  }
}
