import { entranceIcons } from '../model/HomeData';
import { AppItem } from '../model/HomeDataType';

@Component
export default struct IndexEntrance {
  build() {
    Row() {
      //快捷入口关键代码
      ForEach(entranceIcons, (icon: AppItem) => {
        Column() {
          // 直接使用图标资源
          Image(icon.image)
            .width(32)
            .height(32)
            .objectFit(ImageFit.Contain)

          // 直接使用国际化标题
          Text(icon.title)
            .fontSize(12)
            .margin({ top: 4 })
        }
        .width(56)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
      })
    }
    .width('100%')
    .height(64)
    .justifyContent(FlexAlign.SpaceEvenly)
    .padding({ left: 12, right: 12 })
  }
}