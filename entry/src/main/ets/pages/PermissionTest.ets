import request from '@ohos.request';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Text('权限测试页').fontSize(20).fontColor(0x000000)
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
    }
  }
}