# algosort

번호 기반으로 문제를 관리하는 PS 사이트의 특성을
활용하여\
작성해둔 풀이를 **랜덤으로 복습**하기 위한 간단한 쉘 스크립트입니다.

- https://school.programmers.co.kr/learn/courses/30/lessons/[문제번호]
- https://www.acmicpc.net/problem/[문제번호]

해결한 문제를 `문제번호.확장자` 형태로 관리하고 있다면\
랜덤으로 문제를 섞어 복습할 수 있도록 문제 주소를 출력해줍니다.

## Feature
지정한 확장자의 파일을 파싱 후 랜덤으로 `PREFIX` 뒤에 문제 번호를 붙여넣어 출력해줍니다.

### 예시
``` bash
algosort https://boj.kr/ js
```

출력 예:

    https://boj.kr/1541
    https://boj.kr/12980
    https://boj.kr/42885

------------------------------------------------------------------------

## Install
### 디렉토리에서 사용
```bash
mv algosort.sh [문제를 관리하고있는 디렉토리]
cd [문제를 관리하고있는 디렉토리]
chmod +x algosort.sh
./algosort https://boj.kr/ js
```

### PATH에 등록하여 전역으로 사용
```bash
mv algosort.sh /usr/local/bin/algosort
chmod +x /usr/local/bin/algosort
algosort https://boj.kr/ js
```