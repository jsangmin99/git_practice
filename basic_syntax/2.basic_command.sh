# 현재 working directory, staging area 상태 확인
git status

# git add
# 모든 수정 추가사항 add
git add .

#git add 특정 파일 : 특정파일 add
git add 파일경로

# local repository에 반영 및 커밋이력 생성
git commit -m "메세지타이틀" -m "메세지 내용"

# vi 모드에서 작성 : git commit 후 엔터 
git commit

# add 와 commit 동시에
git commit -am "add와 커밋 동시에"


# commit이력 확인 (local repository의 이력)
git log

#git log 간결하게
git log --oneline

# 전체 이력 조
git log --all

# 로그를 그래프 형태로 조회
git log --graph

# 원격저장소로 업로드
git push origin 브랜치명

# 출돌 무시하고 강제 push
git push --force

# 특정 commit ID로의 전환
git checkout 커밋아이디

# 다시 현재의 master 브랜치의 commit로 return
git checkout master

# git pull은 원격의 변경사항을 local로 다운로드
git pull origin 브렌치명

#git 작업 취소
# working directory에서의 취소
# 수정사항만 취소 새로추가한 파일은 취소안됨
git checkout .
# working directory 에서 추가파일 취소
git clean --fdx
# 수정 취소 동시에
git checkout . | git clean --fdx

# staging area 에서의 취소
git reset
# commit 이후의 취소
git reset HEAD~1
git reset HEAD^
# push 이후의 취소
git revert 커밋ID

# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitID1 commitID2
git diff A브랜치 B브랜치

# git fetch
# 원격에 변경사항을 로컬에 가져오되 병합은 하지 않는 것
# 비교 : git pull origin
# 모든 브랜치정보 fetch
git fetch

# 2. working directory에서만 작업 && git pull
# => fetch는 성공, merge -> 어디가 틀렸는지 비교 불가
# => 해결책 -> add commit -> git merge origin/master

# 내 로컬 변경 commit까지 test2 && 원격변경 commit test1
# git push origin master -> 에러 -> git fetch -> diff -> fit pull

# 3. commit 까지 하고 git pull
# => fetch 성공 , merge 실패 -> 어디어디 틀렸는지 비교해서 알려줌 => 충돌사항 정리하고 add commit push

#4
# git pull -> 에러메세지 1) commit 2)stash -> 작업사항 복사해두고, 취소한 다음에 git pull 
# -> 작업사항 다시 추가해서 -> add, commit push
# 문제상황 정의 해결
# git push -> 충돌 실패 -> git pull -> auto merged fail -> 병합 파일 -> 수정후 -> add -> commit -> merge commit

#작업중인 사항을 임시저장
git stash
# 저장한 최신의 목록을 꺼내기
git stash pop
# 저장한 목록은 놔둔채 작업목록 적용
git stash apply stash@인덱스값
# 저장한 목록 조회
git stash list
# 저장한 작업목록 상세조회
git stash shwow -p 인덱스
#저장한 stash 목록 전체 삭제
git stash clear

# 버전 명시 tagging
git tag v1.0
git tag v1.0 -m "1.주요사항1 2.주요사항2"

# tag release 배포
# commit 푸시와 상관없이 태그(release) 별도 push
git push origin v1.o

# 태그 목록 조회
git tag

# 브랜치 생성
# 현재 checkout 하고있는 브랜치를 기준ㄴ으로 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

#브랜치 목록 조회
git branch

# 브랜치 생성과 전환 동시에
git checkout -b 브랜치명

# 로컬 브랜치 생성시 주의사항 : 최신화된 main 에서 checkout -b 하라 
# => git checkout main -> git pull ->gitcheckout-b feature/test

# 원격에서 브랜치 생성 -> 로컬에서 해당 브랜치를 fetch 