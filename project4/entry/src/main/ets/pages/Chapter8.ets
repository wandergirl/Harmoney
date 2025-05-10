import { extendService } from '@kit.AccountKit'

class wandergirl{

  protected name :String=''
  protected age : number =0
  constructor()
  {

  }

}

class hanchan extends wandergirl {
  name ="梨花"
  age = 15

}
const p = new hanchan()
console.log(p.name)

console.log(p.name)







@Entry
@Component
struct Index {
  @State count: number = 0

  build() {
    Column() {

    }
  }
}