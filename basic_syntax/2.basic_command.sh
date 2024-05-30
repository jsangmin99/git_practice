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

# 2. working directory에서만 작업 && git pull
# => fetch는 성공, merge -> 어디가 틀렸는지 비교 불가
# => 해결책 -> add commit -> git merge origin/master
# 내 로컬 변경 commit까지 test2 && 원격변경 commit test1
# git push origin master -> 에러 -> git fetch -> diff -> fit pull

# 3. commit 까지 하고 git pull
# => fetch 성고 , merge 실패 -> 어디어디 틀렸는지 비교해서 알려줌 => 충돌사항 정리하고 add commit push
