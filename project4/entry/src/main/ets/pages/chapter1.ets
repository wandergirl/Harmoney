@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  build() {
   Column(){
     Row(){
       Image($r("app.media.jd_cancel"))
         .width(20)
       Text("帮助")
     }
     .width('100%')
     .justifyContent(FlexAlign.SpaceBetween)

      Image($r('app.media.jd_logo'))
        .width(250)
        .height(250)
        Row(){
          Text("国家/地区")
            .layoutWeight(1)
            .fontColor('#000')
          Text("中国(+86)")
            .margin({right:5})
            .fontColor('#000')
        }
        .width('100%')
        .height(40)
       .padding(10)
        .borderRadius(20)
        .backgroundColor("#FFF0F5")

     TextInput({
       text:"请输入手机号："
     })
       .padding(10)
       .placeholderColor("#ff861239")
       .margin(15)

     Row(){
       Checkbox()
         .width(10)
         .height(10)
         .margin(10)
       Text(){
         Span('我已阅读并同意').fontSize(15)
         Span('京东隐私政策').fontColor("#ADD8E6").fontSize(15)
         Span('《京东用户服务协议》').fontSize(15)
         Span('未注册的手机号将自动创建账号').fontSize(15)
       }
     }
     Button('登录')
       .height(40)
       .width(250)
       .backgroundColor('#00FF00')
       .margin(20)
     Row({space:25}){
       Text('新用户注册')
       Text('账号密码登录')
       Text('无法登录')
     }

     // .padding(25)
     Blank()
     Column(){
       Text("其他登录方式")
         .fontSize(15)
         .height(20)

       Row(){
         Image($r("app.media.jd_weibo")).width(34)
         Image($r("app.media.jd_wechat")).width(34)
         Image($r("app.media.jd_QQ")).width(34)
         Image($r("app.media.jd_huawei")).width(34)
       }
       .width("100%")
       .margin({bottom:30})
       .justifyContent(FlexAlign.SpaceBetween)


     }
     .width('100%')
     .margin({top:40})
   }
    .padding(20)
    .width('100%')
    .height('100%')
  }
}