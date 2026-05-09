Object.assign(global, require('ramda'))

const dateFns = require('date-fns/fp');
global.dateFns = dateFns;
global.formatDate = dateFns.format('yyyy-MM-dd hh:mm:ss');

// const { scatter } = require('ervy');
// global.chart = (series) => {
//   const data = [];
//   series.forEach(({timestamp, ...rest}) => {
//     Object.entries(rest).forEach(([ key, val ]) => { 
//       data.push({ key, value: [timestamp, val], style: '*'})
//     });
//   });
//   return scatter(data);
// }

global.toTable = (json) => {
  let Table = require('cli-table3')
  let table = new Table({head: Object.keys(json[0])});
  table.push(...json.map(Object.values))
  return table.toString()
} 

global.usageStats = (stats) => {
  const renamedSeries = Object.entries(stats).map(([stat, data]) => {
      return data.map(({t, v}) => ({ timestamp: t, [stat]: v }))
  });
  const flattenedSeries = [].concat(...renamedSeries);
  const mergedSeries = flattenedSeries.reduce((acc, { timestamp, ...rest }) => {
      acc[timestamp] = Object.assign(acc[timestamp] || {}, { timestamp: dateFns.format('yyyy-MM-dd HH:mm:ss', timestamp), ...rest});
      return acc
  }, {});
  return Object.values(mergedSeries);
}

global.usageStatsV2 = (stats) => {
  return stats.metrics.map(({date, values}) => ({ date, ...values }));
}
