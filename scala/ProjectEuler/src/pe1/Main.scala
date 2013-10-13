package pe1

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.
class Main {  
  def problem(x: Int): Int = {
    def loop(x: Int, acc: Int): Int =       
      if(x < 3) acc
      else if (x % 3 == 0 || x % 5 == 0) loop(x -1, acc + x)
      else loop(x - 1, acc)
      
    loop(x - 1, 0)
  }     
}

object run extends App {
  println(new Main().problem(1000))
}