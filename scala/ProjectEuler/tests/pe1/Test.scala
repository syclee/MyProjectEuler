package pe1

import org.scalatest.FunSuite
import org.scalatest.junit.JUnitRunner
import org.junit.runner.RunWith

@RunWith(classOf[JUnitRunner])
class Test extends FunSuite {
  import pe1.Main
  
  test("below 10") {
    assert(new Main().problem(10) == 23)
  }
}