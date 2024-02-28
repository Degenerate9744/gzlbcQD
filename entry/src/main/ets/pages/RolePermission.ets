import request from '@ohos.request';
import router from '@ohos.router';
import userApiBack from '../api/UserApi_back';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State roleOption:string = '';
  @State permissionOption:string = '';
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
                  console.info("role group content" + JSON.stringify(itemName))
                  this.roleOption = JSON.stringify(itemName);
                  userApiBack.changePermission1(this.roleOption,this.permissionOption)
                })
              Text('所有角色').fontSize(20).lineHeight(20).fontColor('#182431').fontWeight(500)
            }

            // 选项1
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'role1', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('role1 change is' + value)
                })
              Text('角色1').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项2
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'role2', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('role2 change is' + value)
                })
              Text('角色2').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项3
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'role3', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('role3 change is' + value)
                })
              Text('角色3').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项4
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'role4', group: 'checkboxGroup' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('role4 change is' + value)
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
              CheckboxGroup({ group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((itemName: CheckboxGroupResult) => {
                  console.info("permission group content" + JSON.stringify(itemName))
                  this.permissionOption = JSON.stringify(itemName);
                  userApiBack.changePermission1(this.roleOption,this.permissionOption)
                })
              Text('所有权限').fontSize(20).lineHeight(20).fontColor('#182431').fontWeight(500)
            }

            // 选项1
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission1', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission1 change is' + value)
                })
              Text('权限1').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项2
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission2', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission2 change is' + value)
                })
              Text('权限2').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项3
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission3', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission3 change is' + value)
                })
              Text('权限3').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项4
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission4', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission4 change is' + value)
                })
              Text('权限4').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项5
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission5', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission5 change is' + value)
                })
              Text('权限5').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项6
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission6', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission6 change is' + value)
                })
              Text('权限6').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项7
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission7', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission7 change is' + value)
                })
              Text('权限7').fontSize(18).lineHeight(20).fontColor('#182431').fontWeight(500)
            }.margin({ left: 36 })

            // 选项8
            Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
              Checkbox({ name: 'permission8', group: 'checkboxGroup1' })
                .selectedColor('#007DFF')
                .onChange((value: boolean) => {
                  console.info('permission8 change is' + value)
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