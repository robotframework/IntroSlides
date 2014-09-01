*** Test Cases ***   USER NAME       PASSWORD
Invalid Username     invalid         ${VALID PWD}
Invalid Password     ${VALID USER}   invalid
Both Invalid         invalid         whatever
Empty Username       ${EMPTY}        ${VALID PWD}
Empty Password       ${VALID USER}   ${EMPTY}
Both Empty           ${EMPTY}        ${EMPTY}
