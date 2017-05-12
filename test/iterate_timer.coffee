number = 1

iterate_timer (->
  number < 100
), (->
  $('#test').text number
  number++
  return
), (->
  $('#test').text 'done'
  return
),
500

