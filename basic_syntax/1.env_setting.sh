# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성후 clone
# 방법2. 로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
# 해당 프로젝트 경로에 .git 폴더가 생성
git init

#원격지 주소를 생성 및 추가
#원격지 주소 추가
git remote add origin 레포 주소
git remote add origin https://github.com/jsangmin99/git_practice.git

#원격지 주소 삭제
git remote remove origin
#원격지 주소 변경
git remote set-url origin 레포주소

# 타인레포 커밋이력 유지한체  가져오기
git clone 타인 레포주소

원하는 폴더가서 이동후
git remote set-url origin 내레포주소
git push -u origin main

# 타인레포 이력 없이 클론
# .git 폴더 삭제하고 init 하여 커밋푸쉬
git clone 타인레포주소
git init
git remote add origin 내레포주소
git add .
git commit -m "메시지"
git push origin master

# 사용자 지정 방법
# 전역적 사용자 지정(이름, 이메일)
git config --global user.name "유저이름 입력"
git config --global user.email "이메일입력"

# 지역적 사용자 지정(이름, 이메일)