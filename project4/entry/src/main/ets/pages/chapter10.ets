



@Entry
@Component
struct start {
  build() {
    Column(){
      Scroll(){
        Column({space: 10}){
          ForEach(Array.from({length:10}),(item:string,index)=>{
            Text("天童·爱丽丝"+(index+1))
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Red)
              .fontSize(20)
              .fontColor(Color.Blue)
              .borderRadius(10)
           //   .scrollable(ScrollDirection.Vertical)
           //    .scorllBarWidth(5)
           //    .edgeEffect(EdgeEffect.Spring)
          })
        }
          .padding(10)
          .width('100%')
      }
      .width('100%')
      .height(400)
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Auto)
      .scrollBarWidth(10)
      .edgeEffect(EdgeEffect.Spring)
      }
    }
  }
