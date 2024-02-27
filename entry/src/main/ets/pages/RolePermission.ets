import request from '@ohos.request';
import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Text('角色权限页').fontSize(20).fontColor(0x000000)
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
      Row(){
        Scroll() {
          Column() {
            // 全选按钮
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              CheckboxGroup({ group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((itemName: CheckboxGroupResult) => {
                  console.info("checkbox group content" + JSON.stringify(itemName))
                })
              Text('所有角色').fontSize(20).lineHeight(20).fontColor('#182431').fontWeight(500)
            }

            // 选项1
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox1 change is' + value)
                })
              Text('角色1').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项2
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox2', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox2 change is' + value)
                })
              Text('角色2').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项3
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('角色3').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项4
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
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
        Scroll() {
          Column() {
            // 全选按钮
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              CheckboxGroup({ group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((itemName: CheckboxGroupResult) => {
                  console.info("checkbox group content" + JSON.stringify(itemName))
                })
              Text('所有权限').fontSize(20).lineHeight(20).fontColor('#182431').fontWeight(500)
            }

            // 选项1
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox1 change is' + value)
                })
              Text('权限1').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项2
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox2', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox2 change is' + value)
                })
              Text('权限2').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项3
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限3').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项4
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限4').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项5
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限5').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项6
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限6').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项7
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限7').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项8
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('Checkbox3 change is' + value)
                })
              Text('权限8').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
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