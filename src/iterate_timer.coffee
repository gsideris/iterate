iterate_timer = (condition,success,fail,milliseconds) ->
  if condition() == true    
    success()
    setTimeout (->
      iterate_timer(condition,success,fail,milliseconds)
      return
    ), milliseconds
  else
    fail()
    

