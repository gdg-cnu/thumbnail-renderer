# Typst 앱을 이용해 렌더링

![](./.github/assets/a.png)  

[Typst 온라인 편집기](https://typst.app/app/)에 접속하고 새 프로젝트를 생성합니다. (회원가입 필요)

![](./.github/assets/b.png)  

1. 이 폴더(`/using-typst-app`)에 [gdg-cnu/slide-typst](https://github.com/gdg-cnu/slide-typst)의 `lib` 폴더를 합칩니다.  
2. 이 폴더의 내용물을 모두 새 프로젝트에 업로드합니다.  
\* `main.typ` 파일이 이미 존재하기 때문에 덮어쓸지 묻는 다이얼로그가 나타납니다. Overwrite합니다.  

![](./.github/assets/c.png)  

`#let authors=(` 아래를 수정합니다.
- `title`: (`Content`) 대괄호(`[]`) 안은 [typst의 Content 타입](https://typst.app/docs/reference/foundations/content/) 데이터입니다.
  - 글자의 폰트, 크기, 색상을 수정할 수 있을 뿐 아니라 사진, 표 등 다양한 값을 넣을 수 있지만, 여기서는 개행에 사용됩니다.
    ```typst
    [\ // <- \를 끝에 두고 개행하면 실제로 개행됩니다.

    // <- 두 칸 개행하면 실제로 개행됩니다.
    ]
    ```
- `author`: (`String`) 발표자; String 데이터를 받습니다. 큰따옴표(`"`)로 감쌉니다.
- `author-meta`: (`String`) 소속을 작성하도록 의도되었습니다.
- `author`: (`String`) 이미지 경로를 작성합니다. 만약 경로가 잘못되었다면, 오류와 함께 렌더링되지 않습니다.
- `theme`: 열거형처럼 사용됩니다. `ai-data`, `dev`, `devrel`, `game`, 혹은 `theme.slide.theme-color.blue`, `theme.slide.theme-color.red`, `theme.slide.theme-color.green`, `theme.slide.theme-color.yellow` 여야 합니다.

![](./.github/assets/d.png)  

Typst 앱의 우측 상단 다운로드 버튼의 옵션을 선택하면 PDF가 아닌 PNG로 내보내기할 수 있습니다.  

기본 PPI는 72로 설정되므로, 출력하기 전 해상도 설정에 유의해야합니다.  
