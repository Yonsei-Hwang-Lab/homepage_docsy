# homepage repo for hwanglab 

2026 hyungtai sim.

## usage

이 사이트는 Hugo 와 github CI/CD 를 통해 ec2 에 배포되는 방식으로 구성되어 있습니다. main branch 에 push 해주시면 됩니다.

### 전체 구조

```
├── .github/
├── content/
│    ├── en/   // 각 페이지별 실제 데이터
├── data/
│    ├── members.yaml // member 의 내용
│    ├── news.yaml // news, 최신 10개만 표시됨
│    ├── publications.yaml // publications
│    ├── photos.yaml // photos
├── layouts/
│    ├── shortcodes/  
├── static/            
│    ├── images/
│        ├── lab_photos // photos 에 해당하는 사진들
│        ├── member // member 사진
├── config.yaml     // Hugo 설정
└── README.md

```
* `data/` 내의 yaml 에 각 entry 를 추가해 주시면 됩니다.

## other references

- Docsy user guide: https://docsy.dev/docs
- Docsy: https://github.com/google/docsy
- Hugo theme module:
  https://gohugo.io/hugo-modules/use-modules/#use-a-module-for-a-theme
- Netlify: https://netlify.com
- Docker Compose documentation: https://docs.docker.com/compose/gettingstarted/
