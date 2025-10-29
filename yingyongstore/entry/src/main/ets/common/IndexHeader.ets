@Component
export default struct IndexHeader {

//关键代码
  @Builder searchBar() {
    Stack({alignContent: Alignment.End}) {
      TextInput({ placeholder: $r('app.string.search') })
        .placeholderColor('#FF000000')
        .placeholderFont({ size: 16, weight: 400 })
        .textAlign(TextAlign.Start)
        .caretColor('#FF000000')
        .width('100%')
        .height(40)
        .fontWeight(400)
        .padding({ top: 9, bottom: 9 })
        .fontSize(16)
        .backgroundColor(Color.White)

      Image($r('app.media.ic_public_search'))
        .width(16)
        .height(16)
        .margin({ right: 20 })
    }.height(56).width('100%')
  }

  @Builder titleBar() {
    Text($r('app.string.tabBar1'))
      .fontSize(24)
      .fontWeight(500)
      .fontColor('#18181A')
      .textAlign(TextAlign.Start)
      .height(56)
      .width('100%')
  }

  //关键代码
  build() {
    // 借助栅格实现标题栏和搜索栏在不同断点下的不同布局效果。
    GridRow() {
      GridCol({ span: { xs: 12, lg: 8 } }) {
        this.titleBar()
      }
      GridCol({ span: { xs: 12, lg: 4 } }) {
        this.searchBar()
      }
    }
    .width('100%')
  }
}