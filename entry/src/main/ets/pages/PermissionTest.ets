import request from '@ohos.request';
import document from '@ohos.document';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Text('权限测试页').fontSize(20).fontColor(0x000000)
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
      Row(){
        Text('测试结果').id('bt1').fontSize(30).fontColor(0xf5710c)
      }.margin({ bottom: '20vp' })
      Row(){
        Button('权限测试').width('50%').onClick(() => {
          console.info(''+sendEventByKey('bt1', 10, 'test'))

        })
      }
    }
  }
}