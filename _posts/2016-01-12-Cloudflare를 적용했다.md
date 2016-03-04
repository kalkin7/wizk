---
layout: post
title: Cloudflare를 적용했다
date: 2016-01-12 18:55:00
summary: Cloudflare 캐시 설정을 했다
categories: blog
tags:
  - Blog
permalink: applied-cloudflare
---

## Cloudflare 캐시 적용

이 블로그는 Jekyll+Github Pages로 돌아가고 있다. Jekyll이 워낙 가벼워서 Github Pages 서버가 외국에 있음에도 불구하고 그리 느리다는 느낌이 들지는 않는다. 하지만 Cloudflare를 적용하면 css나 js 파일과 같은 정적 파일들의 만료 기한을 설정해줄 수 있어서 Cloudflare를 적용해 보기로 했다.

방법은 간단하다. Cloudflare 홈페이지에 로그인해서 Page Rules를 조금 조정해주면 된다. 

문제는 블로그를 업데이트했을 때 자동으로 Cloudflare에 저장된 캐시가 삭제되고 재생성되는 것이 아니라는 것이다. 직접 Cloudflare에 접속해서 캐시를 지워줘야 새로운 내용이 반영된다. 하지만 다행히 Cloudflare에서는 커맨드라인에서 캐시를 지우는 API를 제공하고 있었다. curl을 설치하고 특정 명령어를 실행하면 캐시가 모두 지워진다. 난 이것을 배치파일를 만들어서 쉽게 실행할 수 있도록 했다.

하지만 Cloudflare를 적용해보니 그리 큰 체감이 느껴지진 않는다. 한국 엣지가 있어서 좀 빨라지겠거니 했는데, 별 체감이 없어서 좀 아쉽다.
