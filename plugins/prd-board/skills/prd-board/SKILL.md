---
name: prd-board
description: PRD(기획서)나 절차 문서를 읽어 검사하고, 한 장의 보드 HTML로 그린다. "PRD를 보드로 만들어줘", "기획서 시각화해줘", "이 절차 점검해줘", "다시 그려줘" 요청에 사용한다. 설치 확인 질문("시각화 기능 설치됐어?")에는 버전과 기능을 한 줄로 답한다.
---

# PRD 보드 (v2.1.0)

문서를 **검사해서** 그림 한 장으로 바꾼다. 그림은 검사 결과를 담는 그릇이고, 값어치는 §3 렌즈와 §4 판정에서 나온다. 예쁘게만 그리고 검사를 건너뛰면 이 보드는 할 일을 안 한 것이다.

사용자는 코딩을 모르는 1인 사업자다. 전문용어 없이, 쉬운 한국어로만 말한다. 렌즈 이름·판정 용어를 사용자에게 그대로 읊지 않는다.

## 설치 확인 질문을 받으면

"PRD 보드 v2.1.0이 설치되어 있습니다. 기획서를 검사해서 한 장의 보드로 그려드립니다." 한 줄로 답하고 끝낸다.

## 1. 대상을 잡는다

- 폴더에 `PRD.md`가 있으면 그것.
- 없으면 폴더에서 기획서로 보이는 .md 파일을 찾는다. 후보가 여럿이면 사용자에게 하나를 골라달라고 묻는다.
- 사용자가 다른 문서(업무 절차·계획)를 지목하면 그것도 대상이 된다. 그리는 방식은 같다.
- 아무것도 없으면 "아직 기획서 파일이 없네요. 먼저 PRD.md를 만들어주세요."라고 답하고 멈춘다.

**잡은 대상을 한 문장으로 먼저 말하고 시작한다.** 엉뚱한 걸 그리면 보드 전체가 헛수고다.

## 2. 일곱 칸을 채운다

문서의 제목이 조금 달라도 뜻이 같으면 그 칸으로 본다. 괄호가 보드에 표시되는 이름이다.

1. 도구 이름과 한 줄 소개
2. 누가 쓰나 (누가 쓰나)
3. 푸는 문제 (문제정의)
4. 들어오는 것 (Input) / 나가는 것 (Output)
5. 꼭 있어야 할 기능 (작업 흐름의 단계들)
6. 없어도 되는 것 (없어도 되는 것)
7. 다 됐다의 기준 (인턴 설계 완료 기준)

**절대 규칙: 문서에 없는 내용을 지어내서 채우지 않는다.** 없으면 그 칸에 "비어 있음"이라고 표시한다. 빈 칸을 보여주는 것도 이 보드가 하는 일이다.

**문제정의는 문장으로 조립한다.** 「(누가)는 (상황)에서 (어려움) 때문에 (잃는 것)을 잃는다.」 문서에 있는 말로만 조립한다. 조립이 어려우면 문서의 문제 문장을 그대로 쓴다.

**작업 흐름은 세로로 잇는다.** 맨 위 = Input, 중간 = 기능들을 인턴이 일하는 순서대로, 맨 아래 = Output. 순서를 문서에서 알 수 없으면 적힌 순서대로 둔다.

### 단계마다 상태를 판정한다 (셋 중 하나, 뭉치지 마라)

「아직 안 됨」 하나로 뭉치면 **정해졌는데 조건이 붙은 것**과 **아예 안 정한 것**이 섞여, 기획 전체가 엉망인 것처럼 보인다.

| 상태 | 뜻 |
|---|---|
| **정해짐** | 이 단계를 만들기에 충분한 내용이 문서에 있다 |
| **조건부** | 하겠다는 건 정해졌는데 앞 단계 결과나 아직 안 정한 값에 걸려 있다 |
| **안 정해짐** | 이름만 있고 내용이 없다. 정해야 한다 |

**「조건부」에는 왜 조건부인지 한 줄을 반드시 붙인다.** 없으면 「안 정해짐」과 구분이 안 된다.

### 단계마다 TASK와 NOTE를 단다

- **TASK** = 그 단계를 실제로 만들 때 할 일 2~4개. 문서에 세부 내용이 있으면 그대로 쓴다. 문서에서 바로 따라 나오는 일은 만들어 붙여도 되지만 끝에 **(제안)** 을 붙여 구분한다. 문서와 무관한 새 일을 지어내지 않는다.
- **NOTE** = 문서에 적힌 조건·예외, 그리고 그 단계에 걸린 체크사항(⚠를 붙인다).
- 붙일 내용이 없으면 그 줄을 생략한다. 억지로 채우지 않는다.

## 3. 검사 렌즈 여덟 개

각 항목을 문서에 대보고, **걸리는 것만** 올린다. 안 걸리면 조용히 넘어간다. **억지로 개수를 채우지 마라.**

1. **입구가 비어 있나**: Input이 없거나, 그 Input만으로는 Output을 만들 수 없다. 뒤를 아무리 다듬어도 이게 비면 전부 무효다
2. **저절로 되는 척하는 단계**: "자동으로 계산된다"고 적혀 있는데, 실은 사람이 매번 넣어줘야 하는 값이 있다
3. **단계 사이가 이어지나**: 앞 단계가 내놓는 것과 다음 단계가 필요로 하는 것이 어긋난다
4. **끝이 정해져 있나**: 완료 기준이 없거나, 있어도 **확인할 방법**이 안 적혀 있다
5. **같은 것이 두 곳에 다르게 적혀 있나**
6. **이 단계는 누가 하나**: 도구가 하는지 사람이 하는지 안 적힌 단계
7. **잘못됐을 때 돌아갈 길이 있나**: 이상한 값이 들어오거나 실패했을 때 어떻게 되는지
8. **숫자 없는 약속**: "빨라진다·편해진다"고 적혔는데 기준이 될 숫자가 없다

## 4. 판정은 셋이다. 모르는 것을 아는 척하지 않는다

렌즈로 확인한 결과를 **검사 결과** 칸에 적는다. 각 줄은 셋 중 하나다.

- **확인**: 문서에 있고 말이 된다
- **아직**: 문서에 없거나 어긋난다. 이건 그대로 **체크사항**이 된다
- **못 봄**: 문서 밖의 일이라 판단할 수 없다(실제 손님 수, 사용할 서비스의 요금 등). **명시하고 추측하지 않는다**

**문서가 언급한 파일은 폴더에서 실제로 찾아본다.** 문서에 "단가표"가 나오면 폴더에 그 파일이 있는지 확인하고, 있으면 「확인」, 없으면 「아직」으로 적는다. 확인해보지 않고 「못 봄」으로 적지 않는다.

**「못 봄」과 「아직」을 섞지 마라.** 못 본 것을 없는 것처럼 적으면, 사용자는 멀쩡한 기획을 고치러 간다.

## 5. 할 일 목록을 새로 만들지 않는다

보드는 **문서를 비추는 거울이지 별도의 목록이 아니다.** 정본은 언제나 사용자의 `PRD.md`다. 보드에서 고칠 것이 보이면 **PRD를 고치고 보드를 다시 그린다.** 보드에만 있고 문서에는 없는 내용이 생기면, 그 순간부터 둘이 따로 논다.

## 6. HTML 파일로 저장하고, 링크로 발행한다

아래 템플릿을 그대로 쓰고 `{중괄호}` 자리만 문서 내용으로 바꾼다. 디자인(색·글꼴·구조)은 바꾸지 않는다. 완성본을 문서와 같은 폴더에 `PRD보드.html`로 저장한다(있으면 덮어쓴다).

**저장한 파일을 Artifact 도구로 발행해 링크를 준다** (v2.1.0):

- Artifact 도구가 있는 환경에서만 한다. 없으면 이 단계는 조용히 건너뛰고 파일 안내만 한다.
- 이 스킬의 템플릿이 디자인 정본이다 — 발행을 위해 디자인을 다시 만들거나 바꾸지 않고, 저장한 `PRD보드.html`을 그대로 발행한다.
- favicon은 `"📋"`로 고정한다. 제목은 템플릿의 `<title>`이 정한다.
- **같은 파일 경로로 다시 발행하면 같은 링크가 유지된다.** "다시 그려줘"로 새로 그린 뒤에도 같은 `PRD보드.html` 경로로 재발행한다 — 사용자가 받아둔 링크가 계속 최신 보드를 보여주게 하는 것이 이 기능의 핵심이다. 이전 대화에서 발행한 보드를 갱신할 때는 Artifact의 list로 기존 링크를 찾아 url로 지정해 갱신하고, 못 찾으면 사용자에게 링크를 물어본다. 새 링크를 만들어 갈아타지 않는다.
- 링크는 기본 비공개다. 공유 여부는 사용자가 정한다.
- 사용자가 링크를 원하지 않으면("링크는 만들지 마") 파일만 만든다.

발행 후 이렇게 안내한다: "PRD보드.html 파일을 만들고 링크로도 발행했습니다. 링크는 비공개로 시작하고, 보드를 다시 그리면 같은 링크가 최신으로 바뀝니다. 파일은 폴더에서 더블클릭해도 열립니다." 이어서 **가장 중요한 체크사항 한 가지**를 한 문장으로 말해준다.

"다시 그려줘"는 처음부터 다시 읽고 전체를 새로 만든다. 부분 수정하지 않는다. 새로 만든 뒤에는 위 규칙대로 같은 링크에 재발행한다.

### 채우는 방법

- `{도구이름}` `{한줄소개}`: 헤더. 한 줄 소개가 없으면 "비어 있음".
- `{문제정의문}`: §2에서 조립한 한 문장.
- 기능 노드: `<!-- 기능 노드 -->` 블록을 기능 수만큼 반복, `{번호}`는 1부터.
  - 상태 배지는 셋 중 하나로 클래스와 글자를 함께 바꾼다: `st-ok`/정해짐 · `st-cond`/조건부 · `st-none`/안 정해짐. **색만 바꾸고 글자를 그대로 두지 마라.**
  - 「조건부」면 NOTE 첫 줄에 왜 조건부인지 반드시 적는다.
  - TASK·NOTE는 내용이 없으면 그 `<div class="sub">` 블록을 지운다. 제안한 TASK는 문장 끝에 `(제안)`, 체크사항 NOTE는 `<li class="warn">`.
- `{검사결과}`: §4의 판정을 `<div class="check">` 블록 반복으로. 판정 클래스는 `v-ok`(확인) · `v-no`(아직) · `v-blind`(못 봄).
- `{체크목록}`: 「아직」으로 판정된 것들을 `<li>` 반복. 몇 단계 문제인지 괄호로 덧붙인다. 하나도 없으면 `<section class="card checks">` 블록 전체를 삭제한다.
- 목록 칸에 내용이 없으면 `<ul>` 대신 `<p class="empty">비어 있음</p>` 하나만 넣는다.
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
.badge{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.06em;border:1px solid var(--line);border-radius:3px;padding:1px 7px;color:var(--mut);white-space:nowrap}
.node.io .badge{border-color:var(--forest);color:var(--volt)}
.st-ok{border-color:var(--ok);color:var(--ok)}
.st-cond{border-color:var(--mut);color:var(--sub)}
.st-none{border-color:var(--danger);color:var(--danger)}
.node .card{display:grid;gap:10px}
.node .top{display:flex;gap:8px;align-items:baseline;flex-wrap:wrap}
.node .name{font-weight:700;color:var(--ink)}
.sub{display:grid;grid-template-columns:44px 1fr;gap:0 10px;align-items:start}
.sublabel{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.1em;color:var(--mut);padding-top:4px}
.tasklist li::before{content:"☐";background:none;width:auto;height:auto;top:0;color:var(--mut)}
.tasklist li{padding-left:20px;font-size:14px}
.notelist li{font-size:13px;color:var(--mut)}
.notelist li.warn{color:var(--danger)}
.notelist li.warn::before{background:var(--danger)}
.checks-panel{display:flex;flex-direction:column;border:1px solid var(--line);border-radius:8px;overflow:hidden}
.check{display:grid;grid-template-columns:56px 1fr;gap:0 12px;padding:11px 16px;border-bottom:1px solid var(--line);background:var(--card)}
.check:last-child{border-bottom:none}
.verdict{font-family:'JetBrains Mono',monospace;font-size:11px;padding-top:3px}
.v-ok{color:var(--ok)}.v-no{color:var(--danger)}.v-blind{color:var(--mut)}
.check .what{font-size:14px;color:var(--sub)}
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
@media (max-width:700px){.two{grid-template-columns:1fr}.sub{grid-template-columns:1fr;gap:2px}.check{grid-template-columns:1fr;gap:2px}}
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
        <div class="top"><span class="name">{기능}</span><span class="badge st-ok">정해짐</span></div>
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
  <div class="sectionlabel">검사 결과</div>
  <div class="checks-panel">
    <div class="check"><span class="verdict v-ok">확인</span><p class="what">{내용}</p></div>
    <div class="check"><span class="verdict v-no">아직</span><p class="what">{내용}</p></div>
    <div class="check"><span class="verdict v-blind">못 봄</span><p class="what">{내용}</p></div>
  </div>
  <section class="card opt"><h2>없어도 되는 것 (나중에)</h2><ul><li>{내용}</li></ul></section>
  <section class="card done"><h2>인턴 설계 완료 기준</h2><ul><li>{내용}</li></ul></section>
  <section class="card checks"><h2>체크사항</h2><ul>{체크목록}</ul></section>
  <footer>Be_Ready_AI · PRD 보드 v2.1.0</footer>
</div>
</body>
</html>
```

## 하지 않는 것

- 문서에 없는 내용을 만들어 넣지 않는다. 제안하는 TASK는 반드시 (제안) 표시를 단다.
- 확인해보지 않은 것을 「확인」으로 적지 않는다. 확인할 수 없으면 「못 봄」이다.
- 체크사항을 만들어내지 않는다. 걸리는 게 없으면 없는 것이 정상이다.
- 보드를 그리는 것까지다. 문서 수정은 사용자가 시킬 때 별도 작업으로 한다.
- 보드의 Artifact 발행(기본 비공개) 외에는 외부로 보내지 않는다 — 다른 업로드·게시·전송 금지. 파일은 사용자 폴더 안에만 만든다.
