import http from '@ohos.net.http';
import httpUtil from '../HttpUtil';
export class UserApi{
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
}

/*
let userApi = new UserApi();
export default userApi;*/
