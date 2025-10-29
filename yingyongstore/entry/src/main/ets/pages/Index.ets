import Home from '../common/Home'; //组件请参考相关实例
import TabBarItem from '../common/TabBarItem';
import BreakpointSystem from '../common/BreakpointSystem'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'md'
  private breakpointSystem: BreakpointSystem = new BreakpointSystem()
  private onTabChange = (index: number) => {
    this.currentIndex = index
  }

  aboutToAppear() {
    this.breakpointSystem.register()
  }

  aboutToDisappear() {
    this.breakpointSystem.unregister()
  }

  @Builder
  tabItem(index: number, title: Resource, icon: Resource, iconSelected: Resource) {
    TabBarItem({
      index: index,
      currentIndex: this.currentIndex,
      title: title,
      icon: icon,
      iconSelected: iconSelected
    })
  }

  build() {
    // 设置TabBar在主轴方向起始或结尾位置
    Tabs({ barPosition: this.currentBreakpoint === "lg" ? BarPosition.Start : BarPosition.End }) {
      // 首页
      TabContent() {
        Home()
      }
      .tabBar(this.tabItem(0, $r('app.string.tabBar1'), $r('app.media.ic_home_normal'),
        $r('app.media.ic_home_actived')))

      TabContent() {
      }.tabBar(this.tabItem(1, $r('app.string.tabBar2'), $r('app.media.ic_app_normal'),
        $r('app.media.ic_app_actived')))

      TabContent() {
      }
      .tabBar(this.tabItem(2, $r('app.string.tabBar3'), $r('app.media.ic_game_normal'),
        $r('app.media.ic_mine_actived')))

      TabContent() {
      }
      .tabBar(this.tabItem(3, $r('app.string.tabBar4'), $r('app.media.ic_search_normal'),
        $r('app.media.ic_search_actived')))

      TabContent() {
      }
      .tabBar(this.tabItem(4, $r('app.string.tabBar5'), $r('app.media.ic_mine_normal'),
        $r('app.media.ic_mine_actived')))
    }
    .backgroundColor('#F1F3F5')
    .barMode(BarMode.Fixed)
    .barWidth(this.currentBreakpoint === "lg" ? 96 : '100%')
    .barHeight(this.currentBreakpoint === "lg" ? '60%' : 56)
    // 设置TabBar放置在水平或垂直方向
    .vertical(this.currentBreakpoint === "lg")
  }
}