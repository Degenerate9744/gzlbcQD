import request from '@ohos.request';
import router from '@ohos.router';
import userApiBack from '../api/UserApi_back';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Text('用户角色页').fontSize(20).fontColor(0x000000)
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
      Row(){
        Scroll() {
          Column() {
            // 全选按钮
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              CheckboxGroup({ group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((itemName: CheckboxGroupResult) => {
                  let option = JSON.stringify(itemName);
                  console.info("checkbox group content" + option)
                  userApiBack.changePermission(2,0,option)//有问题
                })
              Text('所有角色').fontSize(20).lineHeight(20).fontColor('#182431').fontWeight(500)
            }

            // 选项1
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'roleId1', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox1 change is' + value)
                })
              Text('角色1').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项2
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'roleId2', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox2 change is' + value)
                })
              Text('角色2').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项3
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'roleId3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('角色3').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项4
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'roleId4', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('角色4').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })
          }
        }
      }.margin({ bottom: 36 })

      Row(){
        Button('权限测试页').width('100%').onClick(() => {
          router.pushUrl({
            url: "pages/PermissionTest"
          }).then(()=>{
            console.log('successful')
          }).catch(()=>{
            console.log('err')
          })
        })
      }.width('50%').margin({ bottom: '20vp' }).borderWidth({ top: 1 })
    }
  }

}