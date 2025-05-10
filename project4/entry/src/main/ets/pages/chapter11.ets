
import p1 from "../Tool/Domo1"
import {num1,num2} from "../Tool/Domo1"
console.log(p1.num1.toString())
console.log(p1.name.toString())

@Preview
@Component
struct start {
  build() {
    Column()
    {
      Text("天童·爱丽丝")
      Button('按钮')
    }

  }
}