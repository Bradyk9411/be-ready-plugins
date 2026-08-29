#!/bin/sh
cat > /dev/null
cat <<'JSON'
{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"[기획자 인턴 플러그인] 계획이 승인되었습니다. planner-board 스킬 규칙대로 지금 기획자 보드를 그리세요. 계획에 왜/무엇 값이 없으면 먼저 물어서 채우고, 폴더에 PRD.md가 있으면 prd-board로 PRD보드.html도 이어서 갱신하세요. planner-board가 prd-board보다 우선입니다."}}
JSON
