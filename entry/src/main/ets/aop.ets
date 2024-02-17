import http from '@ohos.net.http';
import httpUtil from './HttpUtil';

type FunParamMapKey = {
  target:Object;
  methodName:string;
  index:number;
}

let funParamMap = new Map<string,string>();

export function Post(url:string){
  return  function(target: any, methodName: string, descriptor: PropertyDescriptor) {
    const originalMethod = descriptor.value;
    descriptor.value = function (...args: any[]) {
      console.log("myTarget=" + methodName)
      let requestData = {}
      args.forEach((arg, index) => {
        console.log("arg=" + arg)
        let obj: FunParamMapKey = { target: target, methodName: methodName, index: index }
        let paramName = funParamMap.get(JSON.stringify(obj));
        if (typeof paramName != 'undefined') {
          requestData[paramName] = arg;
        }
        console.log("paramName=" + paramName)
      })
      const start = Date.now();
      const result = originalMethod.apply(this, args);
      const end = Date.now();
      console.log(`Method ${methodName} excution time: ${end - start} ms`)
      const p = new Promise(function (resolve, reject) {
        httpUtil.post(url, requestData).then(data => {
          console.info("xdw222" + data)
          resolve(data)
        }).catch(err => {
          reject(err)
        })
      })
      return p;
    }
  }
}
export function Param(name:string){
  return function(target:Object,methodName:string,index:number){
    let obj:FunParamMapKey = {target:target,methodName:methodName,index:index};
    funParamMap.set(JSON.stringify(obj),name);
  }
}