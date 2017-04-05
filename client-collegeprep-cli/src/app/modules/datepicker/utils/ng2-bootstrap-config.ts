export enum Ng2BootstrapTheme {BS3 = 1, BS4 = 2}

export class Ng2BootstrapConfig {
  protected static _theme:Ng2BootstrapTheme;

  public static get theme():Ng2BootstrapTheme {
    return (this._theme || Ng2BootstrapTheme.BS3);
  }

  public static set theme(v:Ng2BootstrapTheme) {
    this._theme = v;
  }
}
