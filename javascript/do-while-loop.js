function liftOff(time) {
  do {
      console.log(`T-minus ${time} seconds until liftoff`)
      time--
  } while (time >= 0)
  return "LIFTOFF!"
}

liftOff(10)
liftOff(3)
liftOff(5)