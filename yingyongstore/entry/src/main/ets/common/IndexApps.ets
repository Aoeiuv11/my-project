import { AppItem, MyAppSource } from '../model/HomeDataType';

@Component
export default struct IndexApps {
  private title?: Resource;
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'md';
  private apps: AppItem[] = [];
  @Builder
  appListHeader() {
    Row() {
      Text(this.title)
        .width(100)
        .fontSize(16)
        .textAlign(TextAlign.Start)
        .fontWeight(500)
      Blank()
      Text($r('app.string.more'))
        .fontSize(14)
        .textAlign(TextAlign.End)
        .fontWeight(400)
        .margin({ right: 2 })
      Image($r('app.media.ic_public_arrow_right'))
        .width(12)
        .height(18)
        .opacity(0.9)
        .objectFit(ImageFit.Fill)
    }
    .margin({ bottom: 9, top: 9 })
    .width('100%')
    .alignItems(VerticalAlign.Bottom)
  }

  //关键代码
  @Builder
  appListItem(app:AppItem) {
    Column() {
      Image(app.image)
        .width(this.currentBreakpoint === 'lg' ? 80 : 56)
        .height(this.currentBreakpoint === 'lg' ? 80 : 56)
        .margin({ bottom: 8 })
      Text(app.title)
        .width(this.currentBreakpoint === 'lg' ? 80 : 56)
        .height(16)
        .fontSize(12)
        .textAlign(TextAlign.Center)
        .fontColor('#18181A')
        .margin({ bottom: 8 })
      Text($r('app.string.install'))
        .width(this.currentBreakpoint === 'lg' ? 80 : 56)
        .height(28)
        .fontColor('#0A59F7')
        .textAlign(TextAlign.Center)
        .borderRadius(this.currentBreakpoint === 'lg' ? 26 : 20)
        .fontWeight(500)
        .fontSize(12)
        .padding({ top: 6, bottom: 6, left: 8, right: 8 })
        .backgroundColor('rgba(0,0,0,0.05)')
    }
  }
  //关键代码
  build() {
    Column() {
      this.appListHeader()
      // 借助List组件能力，实现延伸能力场景
      List({ space: this.currentBreakpoint === 'lg' ? 44 : 20}) {
        LazyForEach(new MyAppSource(this.apps), (app: AppItem)=> {
          ListItem() {
            // 每个应用的图标、名称及安装按钮
            this.appListItem(app)
          }
        })
      }
      .width('100%')
      .height(this.currentBreakpoint === 'lg' ? 140 : 120)
      .listDirection(Axis.Horizontal)
    }
    .width('100%')
    .height(this.currentBreakpoint === 'lg' ? 188 : 164)
    .padding({ bottom: 8, left: 12, right: 12 })
  }
}