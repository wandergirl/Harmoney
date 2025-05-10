@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  build() {
    Column(){
      Column(){
        Image($r("app.media.nick"))
        Row(){
          Text("今晚吃这个 | 每日艺术分享")
            .padding(10)
        }
        Row(){
          Image($r("app.media.img"))
            .width(5)
            .height(5)
            .layoutWeight(1)
          Image($r("app.media.ic_like"))
            .width(10)
        }
      }
      .width(300)
      .height("45%")
      .padding(45)
    }

  }
}