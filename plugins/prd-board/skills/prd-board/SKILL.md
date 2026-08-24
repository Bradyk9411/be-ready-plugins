---
name: prd-board
description: PRD(기획서) .md 파일을 읽어 한 장의 시각화 보드 HTML로 그린다. "PRD를 보드로 만들어줘", "기획서 시각화해줘", "다시 그려줘" 요청에 사용한다. 설치 확인 질문("시각화 기능 설치됐어?")에는 버전과 기능을 한 줄로 답한다.
---

# PRD 시각화 보드 (v1.2)

기획서를 그림 한 장으로 바꾼다. 사용자는 코딩을 모르는 1인 사업자다. 전문용어 없이, 쉬운 한국어로만 말한다.

## 설치 확인 질문을 받으면

"PRD 시각화 플러그인 v1.2가 설치되어 있습니다. PRD.md를 읽어 단계별 Task·Note가 달린 한 장의 보드로 그려드립니다." 한 줄로 답하고 끝낸다.

## 보드를 그려달라는 요청을 받으면

### 1. 기획서를 찾는다

- 폴더에 `PRD.md`가 있으면 그것을 읽는다.
- 없으면 폴더에서 기획서로 보이는 .md 파일을 찾고, 후보가 여럿이면 사용자에게 하나를 골라달라고 묻는다.
- 기획서가 아예 없으면 "아직 기획서 파일이 없네요. 먼저 PRD.md를 만들어주세요."라고 답하고 멈춘다.

### 2. 일곱 칸을 채운다

기획서에서 아래 일곱 가지를 찾는다. 문서의 제목이 조금 달라도 뜻이 같으면 그 칸으로 본다. 괄호가 보드에 표시되는 이름이다.

1. 도구 이름과 한 줄 소개
2. 누가 쓰나 (누가 쓰나)
3. 푸는 문제 (문제정의)
4. 들어오는 것 (Input) / 나가는 것 (Output)
5. 꼭 있어야 할 기능 (작업 흐름의 단계들)
6. 없어도 되는 것 (없어도 되는 것)
7. 다 됐다의 기준 (인턴 설계 완료 기준)

**절대 규칙: 기획서에 없는 내용을 지어내서 채우지 않는다.** 해당 내용이 문서에 없으면 그 칸에 "비어 있음"이라고 표시한다. 빈 칸을 보여주는 것도 이 보드가 하는 일이다.

**문제정의는 문장으로 조립한다.** 기획서의 문제 내용을 한 문장의 문제정의문으로 만든다. 형식: 「(누가)는 (상황)에서 (어려움) 때문에 (잃는 것)을 잃는다.」 문서에 있는 말로만 조립하고, 없는 내용을 보태지 않는다. 조립이 어려우면 문서의 문제 문장을 그대로 쓴다.

**작업 흐름은 세로로 잇는다.** 맨 위 노드 = Input(들어오는 것), 중간 노드들 = 꼭 있어야 할 기능을 인턴이 일하는 순서대로 하나씩, 맨 아래 노드 = Output(나가는 것). 순서를 문서에서 알 수 없으면 적힌 순서대로 둔다.

### 3. 단계마다 Task와 Note를 단다

작업 흐름의 각 기능 노드에 두 가지를 붙인다.

- **Task** = 그 단계를 실제로 만들 때 해야 할 구체적인 일, 2~4개. 기획서에 세부 내용이 있으면 **그대로 쓴다.** 기획서 내용에서 바로 따라 나오는 일은 만들어 붙여도 되지만, 그런 항목은 끝에 **(제안)** 을 붙여 문서에 있는 것과 구분한다. 기획서와 무관한 새 일을 지어내지 않는다.
- **Note** = 그 단계에 걸린 조건·예외 중 기획서에 적힌 것(예: "마감 3일 이내면 20% 추가"), 그리고 그 단계와 관련된 체크사항. 체크사항은 ⚠를 붙인다.
- 붙일 내용이 없으면 그 줄 자체를 생략한다. 억지로 채우지 않는다.
- Input·Output 노드에도 조건이 있으면 Note를 달 수 있다.

### 4. 체크사항을 찾는다

기획서를 만드는 사람의 눈으로 읽고, 걸리는 곳만 골라낸다. 억지로 개수를 채우지 않는다.

- 일곱 칸 중 비어 있는 칸
- Input은 있는데 그걸로 Output을 만들 수 없는 곳 (연결이 끊긴 곳)
- 확인할 방법이 안 적힌 완료 기준
- 두 곳에 다르게 적힌 같은 내용

찾은 체크사항은 두 곳에 나온다. 관련 단계의 Note(⚠)와, 보드 맨 아래 체크사항 칸(전체 모아보기). 체크사항이 하나도 없으면 맨 아래 칸 자체를 보드에서 뺀다.

### 5. HTML 파일로 저장한다

아래 템플릿을 그대로 쓰고 `{중괄호}` 자리만 기획서 내용으로 바꾼다. 디자인(색·글꼴·구조)은 바꾸지 않는다. 완성본을 기획서와 같은 폴더에 `PRD보드.html`로 저장한다(있으면 덮어쓴다).

저장 후 이렇게 안내한다: "PRD보드.html 파일을 만들었습니다. 폴더에서 더블클릭하면 브라우저로 열립니다."

"다시 그려줘"라는 요청이 오면 기획서를 처음부터 다시 읽고 전체를 새로 만든다. 부분 수정하지 않는다.

### 템플릿

채우는 방법:
- `{도구이름}` `{한줄소개}`: 헤더에 들어간다. 한 줄 소개가 없으면 "비어 있음".
- `{문제정의문}`: 2단계에서 조립한 한 문장.
- 작업 흐름: `<!-- 기능 노드 -->` 블록을 기능 개수만큼 반복하고 `{번호}`를 1부터 채운다. Input·Output 노드는 그대로 두고 목록만 채운다.
- 기능 노드의 TASK·NOTE 블록: 내용이 없으면 해당 `<div class="sub">…</div>` 블록을 삭제한다. 제안한 Task는 문장 끝에 `(제안)`, 체크사항 Note는 `<li class="warn">`으로.
- 목록 항목은 `<li>` 반복. 내용이 없는 칸은 목록 대신 `<p class="empty">비어 있음</p>` 하나만 넣는다.
- `{체크목록}`: 4단계에서 찾은 체크사항을 `<li>` 반복으로. 하나도 없으면 `<section class="card checks">…</section>` 블록 전체를 삭제한다.
- 그 외 구조·클래스명·스타일은 그대로 둔다.

```html
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{도구이름} 보드</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
:root{--bg:#1B1917;--card:#232120;--line:#3A3733;--ink:#F1ECE1;--sub:#CDC6BA;--mut:#A79F91;--volt:#C4E538;--forest:#3E4A16;--danger:#E5715C;--ok:#8FBE78}
*{box-sizing:border-box;margin:0;padding:0}
body{background:var(--bg);color:var(--ink);font-family:'IBM Plex Sans KR',-apple-system,'Malgun Gothic',sans-serif;line-height:1.65;padding:40px 20px}
.wrap{max-width:820px;margin:0 auto;display:grid;gap:16px}
header{padding:8px 4px 16px;border-bottom:1px solid var(--line)}
header .kicker{font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:.14em;color:var(--volt)}
header h1{font-size:26px;font-weight:700;margin:6px 0 4px}
header p{color:var(--sub)}
.card{background:var(--card);border:1px solid var(--line);border-radius:8px;padding:18px 20px}
.card h2{font-size:13px;font-weight:500;color:var(--mut);letter-spacing:.08em;margin-bottom:10px}
.card ul{list-style:none;display:grid;gap:6px}
.card li{padding-left:14px;position:relative;color:var(--sub)}
.card li::before{content:"";position:absolute;left:0;top:.72em;width:5px;height:5px;border-radius:50%;background:var(--mut)}
.two{display:grid;grid-template-columns:1fr 1.4fr;gap:16px}
.stmt{color:var(--ink);font-size:16px}
.sectionlabel{font-size:13px;font-weight:500;color:var(--mut);letter-spacing:.08em;padding:6px 4px 0}
.spine{display:flex;flex-direction:column}
.node{display:grid;grid-template-columns:30px 1fr;gap:0 14px;position:relative;padding-bottom:18px}
.node::before{content:"";position:absolute;left:14px;top:30px;bottom:0;width:2px;background:var(--line)}
.node:last-child{padding-bottom:0}
.node:last-child::before{display:none}
.dot{width:30px;height:30px;border-radius:50%;border:2px solid var(--line);background:var(--card);display:flex;align-items:center;justify-content:center;font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--mut);z-index:1}
.node.io .dot{border-color:var(--forest);color:var(--volt)}
.badge{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.06em;border:1px solid var(--line);border-radius:3px;padding:1px 7px;color:var(--mut)}
.node.io .badge{border-color:var(--forest);color:var(--volt)}
.node .card{display:grid;gap:10px}
.node .top{display:flex;gap:8px;align-items:baseline}
.node .name{font-weight:700;color:var(--ink)}
.sub{display:grid;grid-template-columns:44px 1fr;gap:0 10px;align-items:start}
.sublabel{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.1em;color:var(--mut);padding-top:4px}
.tasklist li::before{content:"☐";background:none;width:auto;height:auto;top:0;color:var(--mut)}
.tasklist li{padding-left:20px;font-size:14px}
.notelist li{font-size:13px;color:var(--mut)}
.notelist li.warn{color:var(--danger)}
.notelist li.warn::before{background:var(--danger)}
.opt{border-style:dashed}
.opt li{color:var(--mut)}
.done li::before{content:"✓";background:none;width:auto;height:auto;top:0;color:var(--ok);font-weight:700}
.done li{padding-left:20px}
.checks{border-color:#5A382F}
.checks h2{color:var(--danger)}
.checks li::before{background:var(--danger)}
.empty{color:var(--danger);font-size:14px}
.empty::before{content:"⚠ "}
footer{color:var(--mut);font-size:12px;text-align:center;padding-top:8px}
@media (max-width:700px){.two{grid-template-columns:1fr}.sub{grid-template-columns:1fr;gap:2px}}
</style>
</head>
<body>
<div class="wrap">
  <header>
    <div class="kicker">PRD BOARD</div>
    <h1>{도구이름}</h1>
    <p>{한줄소개}</p>
  </header>
  <div class="two">
    <section class="card"><h2>누가 쓰나</h2><ul><li>{내용}</li></ul></section>
    <section class="card"><h2>문제정의</h2><p class="stmt">{문제정의문}</p></section>
  </div>
  <div class="sectionlabel">작업 흐름</div>
  <div class="spine">
    <div class="node io">
      <div class="dot">IN</div>
      <section class="card">
        <div class="top"><span class="name">Input</span><span class="badge">들어오는 것</span></div>
        <ul><li>{내용}</li></ul>
      </section>
    </div>
    <!-- 기능 노드 : 기능 개수만큼 반복 -->
    <div class="node">
      <div class="dot">{번호}</div>
      <section class="card">
        <div class="top"><span class="name">{기능}</span><span class="badge">기능</span></div>
        <div class="sub"><span class="sublabel">TASK</span><ul class="tasklist"><li>{할 일}</li></ul></div>
        <div class="sub"><span class="sublabel">NOTE</span><ul class="notelist"><li>{조건·참고}</li></ul></div>
      </section>
    </div>
    <!-- /기능 노드 -->
    <div class="node io">
      <div class="dot">OUT</div>
      <section class="card">
        <div class="top"><span class="name">Output</span><span class="badge">나가는 것</span></div>
        <ul><li>{내용}</li></ul>
      </section>
    </div>
  </div>
  <section class="card opt"><h2>없어도 되는 것 (나중에)</h2><ul><li>{내용}</li></ul></section>
  <section class="card done"><h2>인턴 설계 완료 기준</h2><ul><li>{내용}</li></ul></section>
  <section class="card checks"><h2>체크사항</h2><ul>{체크목록}</ul></section>
  <footer>Be_Ready_AI · PRD 시각화 플러그인 v1.2</footer>
</div>
</body>
</html>
```

## 하지 않는 것

- 기획서에 없는 내용을 만들어 넣지 않는다. 제안하는 Task는 반드시 (제안) 표시를 단다.
- 보드를 그리는 것까지다. 기획서 수정은 사용자가 시킬 때 별도 작업으로 한다.
- 외부로 보내지 않는다(업로드·게시·전송 금지). 파일은 사용자 폴더 안에만 만든다.
