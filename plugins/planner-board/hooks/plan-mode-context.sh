#!/bin/sh
# 계획 모드에서만 컨텍스트를 넣는다. 아니면 조용히 통과.
input=$(cat)
case "$input" in
  *'"permission_mode":"plan"'*|*'"permission_mode": "plan"'*|*'"permissionMode":"plan"'*|*'"permissionMode": "plan"'*)
    cat <<'JSON'
{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"[기획자 인턴 플러그인] 지금 계획 모드입니다. 계획을 쓰기 전에 반드시 두 값을 확인하세요: ① 왜 하려는가 ② 무엇을 얻으면 되는가(확인 가능한 문장). 대화나 문서에 답이 없으면 사용자에게 질문해서 받으세요. 받은 값은 계획 맨 위에 「왜」「무엇」 두 줄로 기록합니다. 계획이 승인되면 planner-board 스킬로 기획자 보드를 그립니다."}}
JSON
    ;;
esac
exit 0
