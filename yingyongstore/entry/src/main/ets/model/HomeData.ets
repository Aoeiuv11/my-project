// /model/HomeData   在resourse文件中放置以下资源文件，
interface AppItem{
  id:string;
  title:Resource;
  image:Resource;
}

const appList:AppItem[] = [
  { id: '0', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '1', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '2', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '3', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '4', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '5', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '6', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '7', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '8', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '9', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '10', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '11', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '12', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '13', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '14', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '15', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '16', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '17', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '18', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '19', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') },
  { id: '20', title: $r('app.string.public_app1'), image: $r('app.media.ic_public_app1') }
]

const gameList:AppItem[] = [
  { id: '21', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '22', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '23', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '24', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '25', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '26', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '27', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '28', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '29', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '30', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '31', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '32', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '33', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '34', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '35', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '36', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '37', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '38', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '39', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') },
  { id: '40', title: $r('app.string.public_game1'), image: $r('app.media.ic_public_game1') }
]

const entranceIcons:AppItem[]= [
  { id: '41',title: $r('app.string.home_categories'), image: $r('app.media.ic_home_categories') },
  { id: '42',title: $r('app.string.home_top'), image: $r('app.media.ic_home_top') },
  { id: '43',title: $r('app.string.home_fast'), image: $r('app.media.ic_home_fast') },
  { id: '44',title: $r('app.string.home_flower'), image: $r('app.media.ic_home_flower') },
  { id: '45',title: $r('app.string.home_education'), image: $r('app.media.ic_home_education') },
]

export { entranceIcons, appList, gameList }