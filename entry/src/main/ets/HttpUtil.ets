import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import apiResult from './model/ApiResult';

export class HttpUtil {
  request(url: string, requestMethod: http.RequestMethod, requestData?: Object): Promise<Object> {
    let p = new Promise<Object>((resolve, reject) => {
      // 引入包名
      // 每一个httpRequest对应一个HTTP请求任务，不可复用
      let httpRequest = http.createHttp();
      let promise = httpRequest.request(url, {
        method: requestMethod,
        connectTimeout: 60000,
        readTimeout: 60000,
        header: {
          'Content-Type': 'application/json'
        },
        // 当使用POST请求时此字段用于传递内容
        extraData: requestData
      });
      promise.then((data) => {
        console.info('Result:' + data.result);
        console.info('code:' + data.responseCode);
        //todo 此处补充数据拆包操作
        let resultObj = JSON.parse(data.result.toString());
        if (resultObj.code == 20000) {
          let resultData = resultObj.data
          resolve(resultData)
        } else {
          promptAction.showToast({
            message: apiResult.msg
          })
          reject(apiResult)
        }
      }).catch((err) => {
        console.info('error:' + JSON.stringify(err));
        reject(err)
      });
    });
    return p
  }

  post(url: string, requestData: Object) {
    return this.request(url, http.RequestMethod.POST, requestData)
  }

  get(url: string) {
    return this.request(url, http.RequestMethod.GET)
  }
}

let httpUtil = new HttpUtil();

export default httpUtil;