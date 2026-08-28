---
name: planner-board
description: 기획 문서들(문제정의·PRD·도구지도·프로세스)을 읽어 검사하고, 문제정의·기획서 연계 매핑·도구·프로세스 흐름이 담긴 한 장의 보드 HTML로 그린다. "기획자 인턴 보드 그려줘", "도구 지도 보여줘", "프로세스 시각화해줘", "다시 그려줘" 요청에 사용한다. 설치 확인 질문("기획자 인턴 플러그인 설치됐어?")에는 버전과 기능을 한 줄로 답한다.
---

# 기획자 인턴 보드 (v1.2.0)

기획 문서 네 개를 **검사해서** 그림 한 장으로 바꾼다. 보드는 네 부분이다. ① **문제정의** (조립된 한 문장 + 배경·당사자·솔루션), ② **기획서와의 연계** (PRD 기능마다 어느 단계·도구가 맡는지 매핑), ③ **도구 선반** (각 도구가 무슨 일을 하는지 + 비용), ④ **작동의 흐름** (단계마다 어느 도구에서, 누가, 어떤 데이터를 주고받는지). 예쁘게만 그리고 검사를 건너뛰면 이 보드는 할 일을 안 한 것이다.

사용자는 코딩을 모르는 1인 사업자다. 전문용어 없이, 쉬운 한국어로만 말한다.

## 설치 확인 질문을 받으면

"기획자 인턴 플러그인 v1.2.0이 설치되어 있습니다. 기획 문서를 검사해서 문제정의·도구·프로세스 보드 한 장으로 그려드립니다." 한 줄로 답하고 끝낸다.

## 1. 재료를 잡는다

폴더에서 네 문서를 찾는다. 이름이 조금 달라도 뜻이 같으면 그 문서로 본다.

| 재료 | 기본 이름 | 담긴 것 |
|---|---|---|
| 문제정의 | `문제정의.md` | 배경 · 당사자 · 솔루션 세 문장 (왜의 기록) |
| 기획서 | `PRD.md` | 기능 목록 · 완료 기준 · 필요한 도구 표 |
| 도구지도 | `도구지도.md` | 도구별 역할 · 무료/유료 · 월 비용 · 합계 |
| 프로세스 | `프로세스.md` | 단계 순서 · 단계마다 도구/행위자/데이터 |

- 사용자가 다른 파일을 지목하면 그것을 쓴다.
- **하나도 없으면** "아직 기획 문서가 없네요. 문제정의.md부터 만들어주세요."라고 답하고 멈춘다.
- **일부만 있으면** 있는 것으로 그리고, 없는 문서가 담당하는 칸은 「비어 있음」으로 표시한다. 빈 칸을 보여주는 것도 이 보드가 하는 일이다.

**잡은 재료를 한 문장으로 먼저 말하고 시작한다.** (예: "문제정의·PRD·도구지도·프로세스 네 파일로 그립니다.")

**절대 규칙: 문서에 없는 내용을 지어내서 채우지 않는다.** 없으면 「비어 있음」.

## 2. 문제정의를 조립한다 (보드 맨 위)

문제정의는 이 보드에서 가장 크게, 가장 명확하게 보여야 한다. 목록으로 나열하지 말고 **두 문장으로 조립한다**:

> 「**(누가)** 는 **(상황)** 에서 **(어려움)** 때문에 **(잃는 것)** 을 잃는다. 그래서 **(무엇이 되어야 하는가)**.」

- 문서(문제정의·PRD)에 있는 말로만 조립한다. 조립이 어려우면 문서의 문제 문장을 그대로 쓴다.
- 조립문 아래에 원문 세 줄을 라벨(배경 · 당사자 · 솔루션)과 함께 그대로 싣는다. 조립문은 요약이고, 원문이 근거다.
- 그 아래 두 칸: **왜 만드는가** (문서에 적힌 진짜 이유), **무엇을 얻으면 되는가** (PRD 맨 위의 완료 기준. 없으면 솔루션 문장). 완료 기준이 비면 뒤 검사에서 반드시 걸린다.

## 3. 기획서와의 연계를 매핑한다

이 보드가 어느 기획서(PRD)에 붙어 있고, 기획서의 약속이 흐름에서 실제로 지켜지는지 보여주는 표다. **PRD의 기능마다 한 줄씩, 빠짐없이** 만든다.

| 칸 | 채우는 법 |
|---|---|
| 기능 | PRD의 기능 이름 |
| 맡는 단계 | 프로세스에서 그 기능을 수행하는 단계 번호와 이름. 여러 개면 모두 |
| 붙는 도구 | 그 단계의 도구 (없으면 PRD 「필요한 도구」 표에서) |
| 상태 | **이어짐**(단계와 도구가 모두 있다) · **구멍**(흐름에 그 기능을 맡는 단계가 없다) · **도구 없음**(단계는 있는데 도구가 안 정해졌다) |

- 「구멍」과 「도구 없음」은 그대로 체크사항이 된다.
- 반대 방향도 본다: **흐름에는 있는데 PRD의 어느 기능에도 속하지 않는 단계**가 있으면 검사에 올린다. 기획서에 없는 일이 끼어든 것이다.
- 어느 기능이 어느 단계인지 문서만으로 판단이 안 서면 상태를 비우지 말고 「구멍」으로 적는다. 좋게 봐주지 않는다.

## 4. 작동의 흐름을 그린다 (왼쪽에서 오른쪽)

### 도구 선반

도구지도의 도구들을 칩으로 나열한다. 칩마다 세 줄: **이름 · 무슨 일을 하는가(역할 한 줄) · 월 비용**(무료면 "무료"). 역할은 도구지도나 PRD에 적힌 말로 쓰고, 없으면 널리 합의된 한 줄 소개(예: 깃허브 = 작업물 보관)로 채우되 사용자의 기획에 맞춘 설명(예: "견적서 파일을 보관")이 문서에 있으면 그쪽을 쓴다. 도구지도에 합계가 있으면 선반 끝에 **월 합계**를 적는다. 도구지도가 없으면 PRD의 「필요한 도구」 표로 대신하되 비용 칸은 「비어 있음」.

### 흐름 노드

프로세스 문서의 단계를 **적힌 순서대로** 왼쪽에서 오른쪽으로 잇는다. 단계마다 노드 하나. 노드에 넣는 것:

- **단계 이름** (문서의 문장을 짧게 줄여도 되지만 뜻을 바꾸지 않는다)
- **행위자 배지** 넷 중 하나: `act-user`/손님 · `act-me`/나 · `act-ai`/AI · `act-auto`/자동. 문서에 안 적힌 단계는 `act-none`/누가?를 달고 뒤 검사에 올린다.
- **도구 칩**: 그 단계가 일어나는 도구. 도구 선반에 없는 도구가 나오면 그대로 달되 뒤 검사에 올린다.
- **DATA 줄**: 이 단계에서 생기거나 전달되는 데이터. 문서에 있는 것만.

**행위자가 「나」인 노드는 강조된다** (`fnode me` 클래스). 되돌릴 수 없는 순간(돈 · 발송 · 삭제)에 사용자가 서 있는 지점이라, 이 보드에서 가장 눈에 띄어야 한다.

## 5. 검사 렌즈 일곱 개

각 항목을 문서에 대보고, **걸리는 것만** 올린다. 억지로 개수를 채우지 마라.

1. **흐름이 이어지나**: 앞 단계의 DATA와 다음 단계가 필요로 하는 것이 어긋난다
2. **되돌릴 수 없는 단계에 내가 서 있나**: 돈이 오가거나, 손님에게 나가거나, 지우는 단계인데 행위자가 「나」가 아니다
3. **이 단계는 누가 하나**: 행위자가 안 적힌 단계
4. **선반에 없는 도구**: 흐름에는 나오는데 도구지도에 없어서 비용을 모르는 도구
5. **기획서와 흐름이 맞나**: §3 매핑의 「구멍」·「도구 없음」, 그리고 PRD에 없는 유령 단계
6. **끝이 정해져 있나**: 완료 기준이 없거나, 있어도 확인할 방법이 안 적혀 있다
7. **솔루션과 결말이 맞나**: 흐름의 마지막 결과가 문제정의의 솔루션 문장과 다른 것을 내놓는다
8. **예상되는 돌발**: 흐름을 처음부터 끝까지 읽으며 "여기서 예상치 못한 일이 생기면?"을 묻는다. 흐름에서 바로 따라 나오는 돌발만 고른다 (예: 견적 범위 밖의 문의가 들어온다, AI 초안이 틀린 값을 계산한다, 손님이 답장에 회신하지 않는다). **최대 3개**, 없으면 없다. 이 항목은 판정을 거치지 않고 체크사항에 `(예상)` 표시로 바로 올린다 — 문서에 없는 것을 다루는 유일한 예외이며, 그래서 표시가 필수다

## 6. 판정은 셋이다. 모르는 것을 아는 척하지 않는다

- **확인**: 문서에 있고 말이 된다
- **아직**: 문서에 없거나 어긋난다. 이건 그대로 **체크사항**이 된다
- **못 봄**: 문서 밖의 일이라 판단할 수 없다(실제 손님 수, 도구의 실제 요금 등). **명시하고 추측하지 않는다**

문서가 언급한 파일은 폴더에서 실제로 찾아본다. 확인해보지 않고 「못 봄」으로 적지 않는다. 「못 봄」과 「아직」을 섞지 마라.

## 7. 정본은 언제나 문서다

보드는 문서를 비추는 거울이다. 보드에서 고칠 것이 보이면 **문서(문제정의·PRD·도구지도·프로세스)를 고치고 보드를 다시 그린다.** 보드에만 있고 문서에 없는 내용을 만들지 않는다.

## 8. HTML 파일로 저장하고, 링크로 발행한다

아래 템플릿을 그대로 쓰고 `{중괄호}` 자리만 문서 내용으로 바꾼다. 디자인(색·글꼴·구조)은 바꾸지 않는다. 완성본을 문서와 같은 폴더에 `기획자보드.html`로 저장한다(있으면 덮어쓴다).

**저장한 파일을 Artifact 도구로 발행해 링크를 준다**:

- Artifact 도구가 있는 환경에서만 한다. 없으면 이 단계는 조용히 건너뛰고 파일 안내만 한다.
- 이 스킬의 템플릿이 디자인 정본이다. 발행을 위해 디자인을 다시 만들지 않고 저장한 `기획자보드.html`을 그대로 발행한다.
- favicon은 `"🧭"`로 고정한다. 제목은 템플릿의 `<title>`이 정한다.
- **같은 파일 경로로 다시 발행하면 같은 링크가 유지된다.** "다시 그려줘"로 새로 그린 뒤에도 같은 `기획자보드.html` 경로로 재발행한다. 이전 대화에서 발행한 보드를 갱신할 때는 Artifact의 list로 기존 링크를 찾아 url로 지정해 갱신하고, 못 찾으면 사용자에게 링크를 물어본다. 새 링크를 만들어 갈아타지 않는다.
- 링크는 기본 비공개다. 공유 여부는 사용자가 정한다.
- 사용자가 링크를 원하지 않으면("링크는 만들지 마") 파일만 만든다.

발행 후 이렇게 안내한다: "기획자보드.html 파일을 만들고 링크로도 발행했습니다. 링크는 비공개로 시작하고, 보드를 다시 그리면 같은 링크가 최신으로 바뀝니다. 파일은 폴더에서 더블클릭해도 열립니다." 이어서 **가장 중요한 체크사항 한 가지**를 한 문장으로 말해준다.

"다시 그려줘"는 처음부터 다시 읽고 전체를 새로 만든다. 부분 수정하지 않는다.

### 채우는 방법

- `{도구이름}` `{한줄소개}`: 헤더. PRD의 제목과 한 줄 소개. 없으면 "비어 있음".
- 문제정의 카드: `{조립문}`은 §2의 두 문장. `{배경}` `{당사자}` `{솔루션}`은 문제정의 원문. 원문이 없으면 그 줄에 `<p class="empty">비어 있음</p>`.
- `{왜문장}` `{무엇문장}`: §2의 두 칸. 비면 `<p class="empty">비어 있음</p>`.
- 연계 매핑: `<!-- 매핑 행 -->` 블록을 PRD 기능 수만큼 반복. 상태 배지는 클래스와 글자를 함께 바꾼다: `ln-ok`/이어짐 · `ln-gap`/구멍 · `ln-tool`/도구 없음. **색만 바꾸고 글자를 그대로 두지 마라.** 유령 단계는 매핑 표가 아니라 검사 결과에 적는다.
- 도구 칩: `<!-- 도구 칩 -->` 블록을 도구 수만큼 반복. `{역할}`은 한 줄, `{비용}`은 "무료" 또는 "월 ○○"(유료면 `class="c paid"`). `{월합계}`가 없으면 `.shelf-total` 블록을 지운다.
- 흐름 노드: `<!-- 흐름 노드 -->` 블록을 단계 수만큼 반복, 마지막 노드 뒤의 `<div class="link"></div>`는 지운다.
  - 행위자 배지: `act-user`/손님 · `act-me`/나 · `act-ai`/AI · `act-auto`/자동 · `act-none`/누가?. 클래스와 글자를 함께 바꾼다.
  - 행위자가 「나」인 노드는 `class="fnode me"`로 바꾸고 배지 옆에 `<span class="gate">내가 확인</span>`을 단다.
  - DATA 줄에 넣을 내용이 없으면 그 `<div class="data">` 블록을 지운다.
- `{검사결과}`: §6의 판정을 `<div class="check">` 블록 반복으로. 클래스는 `v-ok`(확인) · `v-no`(아직) · `v-blind`(못 봄).
- `{체크목록}`: 두 종류를 `<li>` 반복으로. ① 「아직」 판정 (그대로) ② 렌즈 8의 돌발 예상 — `<li class="exp">` 로 넣고 문장 끝에 `(예상)` 을 붙인다. 둘 다 하나도 없으면 `<section class="card checks">` 블록 전체를 삭제한다.
- 그 외 구조·클래스명·스타일은 그대로 둔다.

```html
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{도구이름} 기획자 보드</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
:root{--bg:#1B1917;--card:#232120;--line:#3A3733;--ink:#F1ECE1;--sub:#CDC6BA;--mut:#A79F91;--volt:#C4E538;--forest:#3E4A16;--danger:#E5715C;--ok:#8FBE78}
*{box-sizing:border-box;margin:0;padding:0}
body{background:var(--bg);color:var(--ink);font-family:'IBM Plex Sans KR',-apple-system,'Malgun Gothic',sans-serif;line-height:1.65;padding:40px 20px}
.wrap{max-width:980px;margin:0 auto;display:grid;gap:16px}
header{padding:8px 4px 16px;border-bottom:1px solid var(--line)}
header .kicker{font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:.14em;color:var(--volt)}
header h1{font-size:26px;font-weight:700;margin:6px 0 4px}
header p{color:var(--sub)}
.card{background:var(--card);border:1px solid var(--line);border-radius:8px;padding:18px 20px}
.card h2{font-size:13px;font-weight:500;color:var(--mut);letter-spacing:.08em;margin-bottom:10px}
.card ul{list-style:none;display:grid;gap:6px}
.card li{padding-left:14px;position:relative;color:var(--sub)}
.card li::before{content:"";position:absolute;left:0;top:.72em;width:5px;height:5px;border-radius:50%;background:var(--mut)}
.stmt{color:var(--ink);font-size:16px}
.hero{border-color:var(--forest)}
.hero h2{color:var(--volt)}
.stmt-xl{font-size:19px;font-weight:700;color:var(--ink);line-height:1.55}
.pd{display:grid;gap:7px;margin-top:14px;border-top:1px dashed var(--line);padding-top:12px}
.pd .row{display:grid;grid-template-columns:52px 1fr;gap:12px;align-items:start}
.pd .lab{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.12em;color:var(--volt);padding-top:5px}
.pd .txt{color:var(--sub);font-size:14px}
.two{display:grid;grid-template-columns:1fr 1fr;gap:16px}
.sectionlabel{font-size:13px;font-weight:500;color:var(--mut);letter-spacing:.08em;padding:6px 4px 0}
.map{display:flex;flex-direction:column;border:1px solid var(--line);border-radius:8px;overflow:hidden}
.map .mhead,.maprow{display:grid;grid-template-columns:1.1fr 1.2fr .8fr 84px;gap:0 14px;padding:10px 16px;background:var(--card);border-bottom:1px solid var(--line)}
.map .mhead{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.1em;color:var(--mut);padding:8px 16px}
.maprow:last-child{border-bottom:none}
.maprow .f{color:var(--ink);font-weight:500;font-size:14px}
.maprow .s{color:var(--sub);font-size:13px}
.maprow .tl{color:var(--sub);font-size:13px}
.ln{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.06em;border:1px solid var(--line);border-radius:3px;padding:1px 8px;justify-self:start;align-self:center;white-space:nowrap}
.ln-ok{border-color:var(--ok);color:var(--ok)}
.ln-gap{border-color:var(--danger);color:var(--danger)}
.ln-tool{border-color:var(--mut);color:var(--sub)}
.shelf{display:flex;flex-wrap:wrap;gap:10px;align-items:stretch}
.chip{display:grid;gap:3px;border:1px solid var(--line);border-radius:6px;padding:9px 14px;background:var(--card);min-width:150px}
.chip .t{font-weight:700;color:var(--ink);font-size:14px}
.chip .r{font-size:12px;color:var(--mut);line-height:1.45}
.chip .c{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--mut)}
.chip .c.paid{color:var(--volt)}
.shelf-total{margin-left:auto;align-self:center;font-family:'JetBrains Mono',monospace;font-size:12px;color:var(--volt)}
.canvas{overflow-x:auto;border:1px solid var(--line);border-radius:8px;background:
  radial-gradient(circle,#2A2724 1px,transparent 1px) 0 0/22px 22px,var(--bg);padding:26px 22px}
.flow{display:flex;align-items:stretch;min-width:max-content}
.fnode{width:225px;background:var(--card);border:1px solid var(--line);border-radius:8px;padding:13px 15px;display:grid;gap:8px;align-content:start}
.fnode.me{border-color:var(--volt);box-shadow:0 0 0 1px var(--volt) inset}
.fnode .top{display:flex;gap:7px;align-items:center;flex-wrap:wrap}
.no{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--mut)}
.act{font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:.06em;border:1px solid var(--line);border-radius:3px;padding:1px 7px;white-space:nowrap}
.act-user{border-color:var(--mut);color:var(--sub)}
.act-me{border-color:var(--volt);color:var(--volt)}
.act-ai{border-color:var(--ok);color:var(--ok)}
.act-auto{border-style:dashed;color:var(--mut)}
.act-none{border-color:var(--danger);color:var(--danger)}
.gate{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--bg);background:var(--volt);border-radius:3px;padding:1px 7px}
.fnode .name{font-weight:700;font-size:14px;color:var(--ink)}
.tool{display:inline-flex;gap:6px;align-items:baseline;font-size:12px;color:var(--sub)}
.tool::before{content:"⚙";color:var(--mut)}
.data{border-top:1px dashed var(--line);padding-top:7px;font-size:12px;color:var(--mut)}
.data b{color:var(--sub);font-weight:500}
.link{width:34px;flex:none;position:relative;align-self:center;height:2px;background:var(--line)}
.link::after{content:"";position:absolute;right:-1px;top:-4px;border:5px solid transparent;border-left-color:var(--line)}
.checks-panel{display:flex;flex-direction:column;border:1px solid var(--line);border-radius:8px;overflow:hidden}
.check{display:grid;grid-template-columns:56px 1fr;gap:0 12px;padding:11px 16px;border-bottom:1px solid var(--line);background:var(--card)}
.check:last-child{border-bottom:none}
.verdict{font-family:'JetBrains Mono',monospace;font-size:11px;padding-top:3px}
.v-ok{color:var(--ok)}.v-no{color:var(--danger)}.v-blind{color:var(--mut)}
.check .what{font-size:14px;color:var(--sub)}
.checks{border-color:#5A382F}
.checks h2{color:var(--danger)}
.checks li::before{background:var(--danger)}
.checks li.exp{color:var(--mut)}
.checks li.exp::before{background:var(--mut)}
.empty{color:var(--danger);font-size:14px}
.empty::before{content:"⚠ "}
footer{color:var(--mut);font-size:12px;text-align:center;padding-top:8px}
@media (max-width:760px){.two{grid-template-columns:1fr}.map .mhead{display:none}.maprow{grid-template-columns:1fr;gap:4px}.check{grid-template-columns:1fr;gap:2px}}
</style>
</head>
<body>
<div class="wrap">
  <header>
    <div class="kicker">PLANNER BOARD</div>
    <h1>{도구이름}</h1>
    <p>{한줄소개}</p>
  </header>
  <section class="card hero">
    <h2>문제정의</h2>
    <p class="stmt-xl">{조립문}</p>
    <div class="pd">
      <div class="row"><span class="lab">배경</span><p class="txt">{배경}</p></div>
      <div class="row"><span class="lab">당사자</span><p class="txt">{당사자}</p></div>
      <div class="row"><span class="lab">솔루션</span><p class="txt">{솔루션}</p></div>
    </div>
  </section>
  <div class="two">
    <section class="card"><h2>왜 만드는가</h2><p class="stmt">{왜문장}</p></section>
    <section class="card"><h2>무엇을 얻으면 되는가</h2><p class="stmt">{무엇문장}</p></section>
  </div>
  <div class="sectionlabel">기획서와의 연계 — {기획서이름} · 기능 {기능수}개</div>
  <div class="map">
    <div class="mhead"><span>기획서의 기능</span><span>맡는 단계</span><span>붙는 도구</span><span>상태</span></div>
    <!-- 매핑 행 -->
    <div class="maprow"><span class="f">{기능}</span><span class="s">{단계}</span><span class="tl">{도구}</span><span class="ln ln-ok">이어짐</span></div>
    <!-- /매핑 행 -->
  </div>
  <div class="sectionlabel">도구 선반</div>
  <section class="card"><div class="shelf">
    <!-- 도구 칩 -->
    <span class="chip"><span class="t">{도구}</span><span class="r">{역할}</span><span class="c">{비용}</span></span>
    <!-- /도구 칩 -->
    <span class="shelf-total">월 합계 {월합계}</span>
  </div></section>
  <div class="sectionlabel">작동의 흐름</div>
  <div class="canvas"><div class="flow">
    <!-- 흐름 노드 -->
    <div class="fnode">
      <div class="top"><span class="no">{번호}</span><span class="act act-auto">자동</span></div>
      <div class="name">{단계이름}</div>
      <span class="tool">{도구}</span>
      <div class="data"><b>DATA</b> {데이터}</div>
    </div>
    <div class="link"></div>
    <!-- /흐름 노드 -->
  </div></div>
  <div class="sectionlabel">검사 결과</div>
  <div class="checks-panel">
    <div class="check"><span class="verdict v-ok">확인</span><p class="what">{내용}</p></div>
    <div class="check"><span class="verdict v-no">아직</span><p class="what">{내용}</p></div>
    <div class="check"><span class="verdict v-blind">못 봄</span><p class="what">{내용}</p></div>
  </div>
  <section class="card checks"><h2>체크사항</h2><ul>{체크목록}</ul></section>
  <footer>Be_Ready_AI · 기획자 인턴 보드 v1.2.0</footer>
</div>
</body>
</html>
```

## 하지 않는 것

- 문서에 없는 내용을 만들어 넣지 않는다. 빈 칸은 「비어 있음」으로 보여준다.
- 확인해보지 않은 것을 「확인」으로 적지 않는다. 확인할 수 없으면 「못 봄」이다.
- 체크사항을 만들어내지 않는다. 걸리는 게 없으면 없는 것이 정상이다. 유일한 예외 = 렌즈 8의 돌발 예상이고, 반드시 `(예상)` 표시를 단다.
- 매핑에서 판단이 안 서는 기능을 「이어짐」으로 좋게 봐주지 않는다.
- 보드를 그리는 것까지다. 문서 수정은 사용자가 시킬 때 별도 작업으로 한다.
- 보드의 Artifact 발행(기본 비공개) 외에는 외부로 보내지 않는다. 다른 업로드·게시·전송 금지. 파일은 사용자 폴더 안에만 만든다.
