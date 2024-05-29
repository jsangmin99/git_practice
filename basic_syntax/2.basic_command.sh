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
git 