@Entry
@Component
struct Index {
  build() {
    Column(){
      Column(){
        Stack({alignContent:Alignment.Bottom}){
          Image($r('app.media.bz_img'))
            .borderRadius({
              topLeft:15,
              topRight:15
            })

          Row({space:20}){
            Row({space:10}){
              Image($r('app.media.bz_play'))
                .width(20)
                .fillColor(Color.White)

              Text('520万')
                .fontColor(Color.White)
            }

            Row({space:5}){
              Image($r('app.media.bz_msg'))
                .width(24)
                .fillColor(Color.White)

              Text('6666')
                .fontColor(Color.White)
            }

            Blank()

            Text('13:14')
              .fontColor(Color.White)

          }
          .padding(15)
          .width('100%')
        }
        .height(180)
        .width('100%')

        Column(){
          Text('【凤凰传奇新歌】 欢迎来到国风统治区：唢呐一想神曲《铁衣……')
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
            .textOverflow({overflow:TextOverflow.Ellipsis})
            .maxLines(2)

          Blank()

          Row(){
            Text('20万点赞')
              .fontSize(18)
              .backgroundColor('#fff8e4e4')
              .fontColor('#f56027')
              .padding(5)
              .borderRadius(5)

            Image($r('app.media.bz_more'))
              .width(24)
          }.width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .height(120)
        .padding(10)

      }
      .height(300)
      .width(300)
      .backgroundColor(Color.White)
      .borderRadius(15)

    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)

  }
}