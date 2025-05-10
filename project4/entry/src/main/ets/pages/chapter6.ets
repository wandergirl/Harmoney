/*
  @auther: wandergrilish
  CREATE BY: DEVECOSTUDIO
  TIME: 8:18
  DATA: 205/3/21
*/

let names: string[] = ['小明', '小红', '大强','小飞']
console.log('查找姓名', names[0])
@Entry
@Component
struct index {
  @State massage : string = "";

  @State counter: number = 1

  build() {
   Column()
   {
     if (this.counter== 1) {Text('1')}
     else if (this.counter== 2){Text('2')}
     else {Text('any')}}
  }
}