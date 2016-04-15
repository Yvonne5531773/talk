exports.list = list = [
  '正在努力加载中'
  '泡咖啡去了， 马上就来给你加载完'
  '正在思考一条有意思的加载消息'
  '正在下载内存中'
  'By Cain and David'
  '穿越中'
  '鱼'
  '正在找bug'
  '怎么还没加载完'
]

exports.get = (date) ->
  list[date.getMinutes() % list.length]
