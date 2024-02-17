export class ApiResult<T>{
  code:number;
  msg?:string;
  data?:T;
}
let apiResult = new ApiResult();
export default apiResult;