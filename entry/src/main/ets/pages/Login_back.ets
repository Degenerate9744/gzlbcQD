// 引入包名
import http from '@ohos.net.http';
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State idd: string = ''
  @State password: string = ''

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

      Button('登录').width('100%').onClick(() => {
        this.login(this.idd, this.password)
      })
    }.width('100%').height('100%').justifyContent(FlexAlign.Center).padding({ left: '16vp', right: '16vp' })
  }

  login(id, password) {
    // 引入包名
    // 每一个httpRequest对应一个HTTP请求任务，不可复用
    let httpRequest = http.createHttp();
    httpRequest.request(
      // 填写HTTP请求的URL地址，可以带参数也可以不带参数。URL地址需要开发者自定义。请求的参数可以在extraData中指定
      "http://127.0.0.1:8080/login/apiLogin",
      {
        method: http.RequestMethod.POST, // 可选，默认为http.RequestMethod.GET
        // 开发者根据自身业务需要添加header字段
        header: {
          'Content-Type': 'application/json'
        },
        // 当使用POST请求时此字段用于传递内容
        extraData: {
          "id": id,
          "password": password
        },
        expectDataType: http.HttpDataType.STRING, // 可选，指定返回数据的类型
      }, (err, data) => {
      if (!err) {
        // data.result为HTTP响应内容，可根据业务需要进行解析
        console.info('Result:' + JSON.stringify(data.result));
        let resultObj = JSON.parse(data.result.toString());
        console.log('------'+resultObj.msg)
        if(resultObj.code == 20000){
          console.log('登录成功')
          router.pushUrl({
            url: "pages/Index"
          }).then(()=>{
            console.log('successful')
          }).catch(()=>{
            console.log('err')
          })
        }else {
          promptAction.showToast({
            message:resultObj.msg
          })
        }
        console.info('code:' + JSON.stringify(data.responseCode));
        // data.header为HTTP响应头，可根据业务需要进行解析
        console.info('header:' + JSON.stringify(data.header));
        console.info('cookies:' + JSON.stringify(data.cookies)); // 8+
        // 取消订阅HTTP响应头事件
        httpRequest.off('headersReceive');
        // 当该请求使用完毕时，调用destroy方法主动销毁
        httpRequest.destroy();
      } else {
        console.info('error:' + JSON.stringify(err));
        // 取消订阅HTTP响应头事件
        httpRequest.off('headersReceive');
        // 当该请求使用完毕时，调用destroy方法主动销毁。
        httpRequest.destroy();
      }
    }
    );
  }
}