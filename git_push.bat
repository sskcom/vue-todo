@git init

@git config --global user.name "sskcom"
@git config --global user.email "sskcomjp08131@gmail.com"

@git add .

@git status

@SET /P ANSWER="���s���܂��B��낵���ł��� (Y/N)�H"

@if /i {%ANSWER%}=={y} (goto :yes)
@if /i {%ANSWER%}=={yes} (goto :yes)

@EXIT


@:yes

@set /p star="�R�����g����͂��Ă�������"

@git commit -m %star%

@git branch -M main

@set /p star="���|�W�g��������͂��Ă�������"

@git remote add origin %star%


@git push -u origin main
@set /p star="�{����ok�ł���"