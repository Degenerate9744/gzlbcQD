import http from '@ohos.net.http';
import httpUtil from '../HttpUtil';
import {Post,Param} from '../aop'
import { ApiResult } from '../model/ApiResult';
import { User } from '../model/User';
export class UserApi{
  @Post("http://127.0.0.1:8080/login/apiLogin")
  login(@Param("id")id:string,@Param("password")password:string):Promise<ApiResult<User>>{
    return;
  }
}

let userApi = new UserApi();
export default userApi;