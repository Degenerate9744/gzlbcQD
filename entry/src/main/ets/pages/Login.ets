// 引入包名
import http from '@ohos.net.http';
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import HttpUtil from '../HttpUtil';
import userApi from '../api/UserApi';
import Animator from '@ohos.animator';
import singleton from '../model/Singleton'


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State idd: string = ''
  @State password: string = ''
  @State code: number = 0
  @State process: boolean = true

  build() {
    Column() {
      Image($r('app.media.u35')).width('48vp').height('48vp')
      Text('智能家具').margin({ top: '20vp', bottom: '20vp' }).fontSize('24fp')

      Row() {
        Image($r('app.media.user')).width('18vp').height('18vp').margin({ right: '10vp' })
        TextInput({ text: this.idd })
          .width('100%')
          .flexShrink(1)
          .borderRadius(0)
          .backgroundColor('#FFFFFF')
          .onChange((value: string) => {
            this.idd = value;
          })
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })

      Row() {
        Image($r('app.media.pwd')).width('18vp').height('18vp').margin({ right: '10vp' })
        TextInput({ text: this.password })
          .width('100%')
          .flexShrink(1)
          .borderRadius(0)
          .backgroundColor('#FFFFFF')
          .type(InputType.Password)
          .onChange((value: string) => {
            this.password = value;
          })
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })

      Row() {
        Text('忘记密码')
        Text('立即注册')
      }.width('100%').justifyContent(FlexAlign.SpaceBetween)

      Row(){
        Column(){
          LoadingProgress()
            .height(120)
            .width(120)
            .visibility(this.process ? Visibility.None : Visibility.Visible)
          Button('登录').width('100%').onClick(() => {
            this.process = false
            // this.login(this.idd, this.password)//shaodongxi
            userApi.login(this.idd, this.password).then((data)=>{
              router.pushUrl({
                url: "pages/Index"
              }).then(()=>{
                // console.info('___________________________')
                // console.info('======='+JSON.stringify(data))
                let res = JSON.parse(JSON.stringify(data))
                console.info('============'+res.token)
                singleton.setOrCreate('token',res.token)
                // console.info('************'+JSON.stringify(singleton))
                // console.info('************'+singleton.get('token'))
                console.info('++++++successful')
              }).catch(()=>{
                console.log('err')
              })
            });
          })
        }
      }
    }.width('100%').height('100%').justifyContent(FlexAlign.Center).padding({ left: '16vp', right: '16vp' })
  }
}