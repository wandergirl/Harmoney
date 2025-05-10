
@Entry
@Component
struct start {
  @State message :String='';
  build() {

    Column(){
      // Swiper(){
      //   Image($r('app.media.AL1S1'))
      //   Image($r('app.media.AL1S2'))
      //   Image($r('app.media.AL1S3'))
      //   Image($r('app.media.AL1S4'))
      // }
      //
      // .indicator(Indicator.dot() // 小圆点
      // .aitemWidth(20)
      // .itemHeight(20)
      //   .color(Color.Black)
      //   .selectedItemWidth(30)
      //   .selectedItemHeight(30)
      //   .selectedColor(Color.White) )


      Swiper(){
        Text('天童·爱丽丝')
          .textAlign(TextAlign.Center)
          .fontColor(Color.Blue)
          .fontSize(50)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图1'
            })
          })
        Text('早濑·优香')
          .textAlign(TextAlign.Center)
          .fontColor(Color.Blue)
          .fontSize(50)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图2'
            })
          })
        Text('才羽桃井')
          .textAlign(TextAlign.Center)
          .fontColor(Color.Blue)
          .fontSize(50)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图3'
            })
          })
            }
      .height(100)
      .width(300)
          }
          }
      }
