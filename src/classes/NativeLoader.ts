import { NativeModules } from 'react-native';
export class NativeLoader {
  protected _bdk: any = '';

  constructor() {
    this._bdk = NativeModules.BdkRnModule;
  }
}
