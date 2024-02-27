import request from '@ohos.request';
import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Button('上传').width('100%').onClick(() => {
          this.upload()
        })
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
      Row(){
        Button('用户角色页').width('100%').onClick(() => {
          router.pushUrl({
            url: "pages/UserRole"
          }).then(()=>{
            console.log('successful')
          }).catch(()=>{
            console.log('err')
          })
        })
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
      Row(){
        Button('角色权限页').width('100%').onClick(() => {
          router.pushUrl({
            url: "pages/RolePermission"
          }).then(()=>{
            console.log('successful')
          }).catch(()=>{
            console.log('err')
          })
        })
      }.width('100%').margin({ bottom: '20vp' }).borderWidth({ bottom: 1 })
    }
  }
  upload(){
    console.info("--------------------test")
    let uploadTask;
    let uploadConfig = {
      url: 'http://127.0.0.1:8080/file/upload', //需要手动替换为真实服务器地址
      header: { 'token': 'Mi02NWI5MjAxODBkNGQ3OGFhYjNlOTNlMzZkMGFkMTc0MQ==','client_type': 'web' },
      method: "POST",
      files: [{ filename: "test", name: "test", uri: "C:/Users/h/Desktop/test.png", type: "png" }],
      data: [{ name: "name123", value: "123" }],
    };
    try {
      request.uploadFile(globalThis.abilityContext, uploadConfig).then((data) => {
        uploadTask = data;
        console.info("--------------"+data)
      }).catch((err) => {
        console.error('Failed to request the upload. Cause: ' + JSON.stringify(err));
      });
    } catch (err) {
      console.error('err.code : ' + err.code + ', err.message : ' + err.message);
    }
    let failCallback = (err) => {
      console.info('Download task failed. Cause:' + err);
    };
    uploadTask.on('fail', failCallback);
  }
}