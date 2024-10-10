#import "/lib/theme.typ"
#show: theme.theme.with()

#let ai-data = theme.slide.theme-color.green
#let dev = theme.slide.theme-color.blue
#let devrel = theme.slide.theme-color.red
#let game = theme.slide.theme-color.yellow

#let authors = (
  (
    title: [
      여기에 제목을 작성합니다.
    ],
    author: "발표자명",
    author-meta: "Chonnam National University",
    author-image-path: "/assets/profile01.jpg",
    theme: dev
  ),
  (
    title: [\
      불량 메타버스 인디게임은\
      게임 엔진의 꿈을 꾸는가
    ],
    author: "Jonghyeon Park",
    author-meta: "Chonnam National University",
    author-image-path: "/assets/profile01.jpg",
    theme: game
  ),
  (
    title: [\
      불량 메타버스 인디게임은\
      게임 엔진의 꿈을 꾸는가
    ],
    author: "Jonghyeon Park",
    author-meta: "Chonnam National University",
    author-image-path: "/assets/profile01.jpg",
    theme: devrel
  ),
  (
    title: [\
      불량 메타버스 인디게임은\
      게임 엔진의 꿈을 꾸는가
    ],
    author: "Jonghyeon Park",
    author-meta: "Chonnam National University",
    author-image-path: "/assets/profile01.jpg",
    theme: ai-data
  ),
)


// ------------------------------------------

#for each in authors [
  #theme.slide.title(
    title: each.title,
    author: each.author,
    author-meta: each.author-meta,
    author-image-path: each.author-image-path,
    theme: each.theme
  )
]
