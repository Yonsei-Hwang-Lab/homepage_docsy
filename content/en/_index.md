---
title: Hwang Lab
---
<style>
  .td-main {
  padding-top: 0rem !important;   // 원하는 값으로 변경 가능
  }
  .td-heading-self-link {
    display: none;
  }

  /* ===== 여기서부터 About 전용 비디오 배경 ===== */

  .about-video-bg {
    position: relative;
    min-height: 100vh;
    overflow: hidden;
  }

  /* 화면에 고정되는 비디오 (스크롤과 무관한 background 역할) */
  .about-video-bg__video {
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    transform: translate(-50%, -50%);
    object-fit: cover;
    z-index: -1; /* 페이지 내용 뒤로 보내기 */
  }

  /* 비디오 위에 올라가는 실제 콘텐츠 레이어 */
  .about-video-bg__overlay {
    position: relative;
    z-index: 1;
    background: rgba(46, 46, 46, 0.61);
    color: #fff; /* cover 안 텍스트 가독성용, 필요에 따라 조절 */
  }
  /* cover-block 배경 투명화 */
  .td-cover-block {
    background: transparent !important;
  }

  /* 기본 overlay 제거 */
  .td-cover-block__overlay,
  .td-cover-block__overlay::before,
  .td-cover-block::before {
    background: transparent !important;
  }
  /* Docsy Navbar를 불투명하게 만들기 */
  .td-navbar,
  .navbar {
    background-color: #00143a !important;  /* 원하는 고정색 */
    backdrop-filter: none;                  /* 투명/블러 효과 제거 */
    box-shadow: 0 2px 6px rgba(0,0,0,.25);  /* 가독성을 위한 그림자 (선택) */
  }

  /* Docsy가 스크롤 시 적용하는 투명 클래스도 무효화 */
  .td-navbar.td-navbar--transparent,
  .navbar.navbar-bg-onscroll {
    background-color: #00143a !important; /* primary 색상 인용 */
  }
  /* 뉴스 카드 스타일 커스텀 */
  .news-onecol .td-box {
    background: rgba(129, 129, 129, 0.23); /* 반투명 화이트 */
    border: 2px solid rgba(0, 0, 0, 0.52); /* 얇은 테두리 */
    border-radius: 10px;                    /* 부드러운 모서리 */
    backdrop-filter: blur(4px);             /* 유리 느낌 (선택) */
  }

  /* 카드 바깥 여백 */
  .news-onecol .col-12 {
    margin-bottom: 20px;
  }

  /* 카드 안 여백 조금 더 주기 */
  .news-onecol .td-box.h-100.p-4 {
    padding: 1.75rem !important;
  }
</style>

<div class="about-video-bg">
  <!-- 옵션: 첫 로딩용 이미지 -->
  <video
    class="about-video-bg__video"
    autoplay
    muted
    loop
    playsinline
    webkit-playsinline
    poster="/images/featured-background.jpg"
    aria-hidden="true"
  >
    <source src="/images/homepage_background.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>

  <div class="about-video-bg__overlay">

  {{% blocks/cover title="HWANG LAB @ YONSEI" image_anchor="top" height="med"  %}}

  <p class="fs-4 fw-semibold mt-5">EVERY CELL IS SPECIAL :) </p>
  <p class="lead mt-5">Department of Medical Science, Yonsei University College of Medicine</p>

  {{% /blocks/cover %}}
  
  <p class="fs-2 fw-bold mt-5 text-center"> Mission </p><br>
  <div class="row news-onecol">
  <div class="col-12 MB-4">
  <div class="td-box td-box--gray h-100 p-4">
  <p class="lead mt-5">We develop state-of-the-art single cell genomic technologies to profile and perturb the cell dynamics in unprecedented resolution and scale. </p>
  <p class="lead mt-5">Our long-term goal is to leverage these high-throughput approaches to dissect genetic architecture of individual human variation. </p></br>

  <p class="fs-4 fw-semibold mt-5">LET'S DIVE INTO THE WORLD OF SINGLE CELL!!!</p></br>
  </div></div></div>

  <p class="fs-2 fw-bold mt-5 text-center">News </p></br>

  {{< news_short limits = 10 >}}
  
  </div>
</div>