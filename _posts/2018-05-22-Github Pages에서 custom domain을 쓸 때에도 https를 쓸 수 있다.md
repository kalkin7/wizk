---
published: true
layout: post
date: '2018-05-22 12:00'
summary: 이제 Github Pages에서 custom domain을 쓸 때에도 https를 쓸 수 있다.
categories: blog
tags:
  - Blog
permalink: https-github-pages-custom-domain
---

[https](https://d.pr/8mDQTc.png)

## 구글의 https 우선 정책과 Github Pages

구글은 최근 https를 적용하지 않은 사이트에 검색 순위 패널티를 주고 있다. 즉, https를 적용하지 않은 사이트는 구글의 검색 순위에서 뒤로 밀린다는 말이다. 그 뿐 아니라, 현재 크롬에서는 https가 적용된 사이트는 안전함이라고 표시되고, 추후에는 https가 적용되지 않은 사이트는 안전하지 않다는 표시를 띄울 예정이라고 한다.

Github Pages는 이전부터 https를 지원해왔다. xxx.github.io 형식으로 Github Pages에 사이트를 운영하는 경우에는 간단한 옵션 설정만으로 https를 적용할 수 있었다. 하지만 자신의 도메인을 연결해서 사용할 때는 Github pages 자체 기능으로는 https를 적용하는 것이 불가능했다.

그래서 사람들은 편법으로 [Cloudflare](https://cloudflare.com) 에 도메인을 연결해서 Cloudflare 자체 https 리다이렉팅 기능을 사용하곤 했다. 하지만 Cloudflare가 비용을 이유로 한국에서 접속해도 서울 엣지에서 전송하지 않도록 하는 바람에 Cloudflare를 이용하면 속도가 느려지는 단점이 있었다.



## 이제 Custom Domain을 써도 https 적용이 가능하다

하지만 5월 1일부터 Github에서 Let’s Encrypt 를 이용해서 Custom Domain에도 https를 지원하기 시작했다. 방법은 간단하다. CNAME이나 ALIAS를 이용한 경우에는 따로 바꿀 필요가 없고, A 레코드를 이용해서 Github에 연결한 사람은 [새로운 ip](https://help.github.com/articles/setting-up-an-apex-domain/#configuring-a-records-with-your-dns-provider)를 지정해야 한다. 그 후에 옵션에서 “Enforce HTTPS” for your domain"에만 체크해주면 끝이다.

이렇게 하면 https가 적용될 뿐만 아니라 사이트가 CDN을 통해 전송되면서 로딩 속도도 더 빨라진다. 

Github Pages의 여러 장점들 때문에 Github Pages에 사이트를 운영하지만, https가 적용되지 않아서 아쉬웠던 분들에게 좋은 소식이 되지 않을까 싶다.
