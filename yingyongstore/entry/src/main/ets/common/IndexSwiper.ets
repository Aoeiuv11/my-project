@Component
export default struct IndexSwiper {
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'md';
  @Builder swiperItem(imageSrc:Resource) {
    Image(imageSrc)
      .width('100%')
      .aspectRatio(2.5)
      .objectFit(ImageFit.Fill)
  }

  build() {
    Swiper() {
      this.swiperItem($r('app.media.ic_public_swiper1'))
      this.swiperItem($r('app.media.ic_public_swiper2'))
      this.swiperItem($r('app.media.ic_public_swiper3'))
    }
    .autoPlay(true)
    .indicator(false)
    .itemSpace(10)
    // 配置不同断点下运行横幅中展示的图片数量
    .displayCount(this.currentBreakpoint === 'sm' ? 1 : (this.currentBreakpoint === 'md' ? 2 : 3))
    .width('100%')
    .padding({ left: 12, right: 12, bottom: 16, top: 16 })
  }
}