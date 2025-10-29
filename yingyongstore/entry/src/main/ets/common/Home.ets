import IndexSwiper from './IndexSwiper';
import IndexEntrance from './IndexEntrance';
import IndexApps from './IndexApps';
import { appList, gameList } from '../model/HomeData';
import IndexHeader from './IndexHeader';

@Component
struct IndexContent {
  build() {
    List() {
      // 运营横幅
      ListItem() {
        IndexSwiper()
      }
      // 快捷入口
      ListItem() {
        IndexEntrance()
      }
      // 精品应用
      ListItem() {
        IndexApps({ title: $r('app.string.boutique_application'), apps: appList })
      }
      // 精品游戏
      ListItem() {
        IndexApps({ title: $r('app.string.boutique_game'), apps: gameList })
      }
    }
    .width("100%")
  }
}

@Entry
@Component
export default struct Home {
  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Start, alignItems: ItemAlign.Start }) {
      // 标题栏和搜索栏
      IndexHeader()
      // 运营横幅、快捷入口、精品应用、精品游戏等
      IndexContent()
    }
    .height('100%')
    .backgroundColor("#F1F3F5")
  }
}