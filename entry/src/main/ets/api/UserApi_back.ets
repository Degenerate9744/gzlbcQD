import http from '@ohos.net.http';
import httpUtil from '../HttpUtil';
export class UserApiBack{
  login(id:string,password:string):Promise<Object>{
    let requestData = {
      "id": id,
      "password": password
    }
    let p = new Promise<Object>((resolve,reject)=>{
      httpUtil.post("http://127.0.0.1:8080/login/apiLogin", requestData).then((data) => {
        resolve(data)
      }).catch(err=>{
        reject(err)
      })
    })
    return p;
  }
  // flag=0时是改变用户角色，flag=1时是改变角色权限
  changePermission(id:number,flag:number,option:string):Promise<Object>{
    // console.info("=============="+id+"==="+flag+"==="+option)
    let requestData = {
      "id": id,
      "flag": flag,
      "option": option
    }
    // console.info("=============="+requestData.id+"==="+requestData.flag+"==="+requestData.option)
    let p = new Promise<Object>((resolve,reject)=>{
      httpUtil.post("http://127.0.0.1:8080/user_role_permission_option/permission_update", requestData).then((data) => {
        resolve(data)
      }).catch(err=>{
        reject(err)
      })
    })
    return p;
  }
}

let userApiBack = new UserApiBack();
export default userApiBack;
