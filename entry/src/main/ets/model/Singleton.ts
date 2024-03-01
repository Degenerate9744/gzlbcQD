export class Singleton {
  private static instance: LocalStorage;

  private constructor() {
    // 进行初始化操作
  }

  public static getInstance(): LocalStorage {
    if (!Singleton.instance) {
      Singleton.instance = new LocalStorage();
    }
    return Singleton.instance;
  }
}
let singleton = Singleton.getInstance();
export default singleton;
