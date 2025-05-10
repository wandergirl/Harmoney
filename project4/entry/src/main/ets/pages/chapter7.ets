
/*
 *
 * CREATE BY DEVECOSTUDIO
 * @AUTHER  wandergirl
 * TIME 10:24
 * DATA: 2025/4/2
 *
 *
 * */
interface ImageCount{
  url:string
  count:number
}

@Entry
@Component
struct Index {
  //奖品数组-奖池
  @State prizes:string[]=['pg','hw','xm']
  @State prizeIndex:string='' //默认没有奖
  //随机生肖卡序号0-5
  @State randomIndex:number = -1 //-1表示还没开始抽
  //基于接口ImageCount准备图片数据
  @State images:ImageCount[]=[
    {url:'app.media.bg_00',count:0},
    {url:'app.media.bg_01',count:0},
    {url:'app.media.bg_02',count:0},
    {url:'app.media.bg_03',count:0},
    {url:'app.media.bg_04',count:0},
    {url:'app.media.bg_05',count:0}
  ]
  //控制遮罩层显隐
  @State maskOpacity:number = 0
  @State maskzIndex:number = -1
  //控制图片动画缩放
  @State maskImageX:number = 0
  @State maskImageY:number = 0
  //控制大奖层显隐
  @State prize:boolean = false
  build() {
    Stack() {
      //初始化布局结构
      Column() {


        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  fontSize: 14,
                  badgeSize: 20,
                  badgeColor: '#fa2a2d'
                }
              }) {
                Image($r(item.url))
                  .width(70)
              }
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .width('100%')
        .height(300)


        Button('立即抽卡')//点击时修改遮罩参数
          .onClick(() => {
            //点击时修改遮罩参数，使遮罩显示
            this.maskOpacity = 1
            this.maskzIndex = 99
            //点击时的图片缩放动画
            this.maskImageX = 1
            this.maskImageY = 1
            //随机数生成
            this.randomIndex = Math.floor(Math.random() * 6)
          })
          .width(200)
          .backgroundColor('#1d5b8c')
          .margin({ top: 50 })




      }
      .width('100%')
      .height('100%')


      //抽卡遮罩层
      Column({ space: 30 }) {
        Text('获得生肖卡')
          .fontColor('#f5ebcf')
          .fontSize(30)
          .fontWeight(700)
        Image($r(`app.media.img_0${this.randomIndex}`))
          .width(200)//控制元素的缩放
          .scale({
            x: this.maskImageX,
            y: this.maskImageY
          })
          .animation({
            duration: 500
          })
        Button('开心收下')//点击时修改遮罩参数
          .onClick(() => {
            //点击时修改遮罩参数，使遮罩隐藏
            this.maskOpacity = 0
            this.maskzIndex = -1
            //点击时的图片缩放动画
            this.maskImageX = 0
            this.maskImageY = 0
            //开心收下 对象数组的情况需要更新，需要修改替换整个对象
            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              count: this.images[this.randomIndex].count + 1
            }
            //每次收完卡片，需要进行检索是否集齐六张卡片，判断是否集齐了
            //需求：判断数组项的count是否都大于0
            let flag:boolean = true //假设集齐
            //验证是否集齐
            for(let item of this.images){
              if (item.count==0) {
                flag = false
                break //有一个count为0，后续就不需要判断了
              }
            }
            this.prize=flag


            //判断是否中奖了 如果是 需要抽奖
            if(flag){
              let randomIndex:number=Math.floor(Math.random()*3)
              this.prizeIndex = this.prizes[randomIndex]
            }
          })
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0' })




      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      //颜色十六进制色值，前两位为透明度
      .backgroundColor('#cc000000')
      //设置透明度
      .opacity(this.maskOpacity)
      .zIndex(this.maskzIndex)
      //动画 animation 元素状态发生改变，可以添加animation做动画效果
      .animation({
        duration: 300
      })


      //抽大奖遮罩层
      if (this.prize) {
        Column({ space: 30 }) {
          Text('恭喜获得手机一部')
            .fontSize(25)
            .fontColor('#f5ebcf')
            .fontWeight(700)
          Image($r(`app.media.${this.prizeIndex}`))
            .width(300)
          Button('再来一次')
            .onClick(()=>{
              this.prize = false
              this.prizeIndex=''
              this.images=[
                {url:'app.media.bg_00',count:0},
                {url:'app.media.bg_01',count:0},
                {url:'app.media.bg_02',count:0},
                {url:'app.media.bg_03',count:0},
                {url:'app.media.bg_04',count:0},
                {url:'app.media.bg_05',count:0}
              ]
            })
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({ width: 2, color: '#fff9e0' })
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .height('100%')
        .backgroundColor('#cc000000')


      }
    }
  }
}