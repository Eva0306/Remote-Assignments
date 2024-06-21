
//: # Part 1 : Git & GitHub
/*:
## 2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 
 ---
**a. git status**
 
 
 可以檢查目前git狀態，包含:
 
· 目前所在分支(branch)
 
· 準備提交的變更(Changes to be committed)，最新版無此檔案，檔案在staging area，可以被commit至repo，被存入下一個版本
 
· 尚未準備提交的變更(Changes not staged for commit)，最新版有此檔案，檔案變更，變更尚未儲存至staging area，故無法被commit
 
· 未追蹤的變更(Untracked files)，最新版無此檔案，staging area也無此檔案，無法被commit

 ---
**b. git diff**
 
可以比對兩個版本之間的差異，第一行diff--git代表對哪兩個檔案做出比對，第二行index顯示變更前後的Hash值以及git屬性、權限，第三行---a/，代表文件變更前的狀態，第四行+++b/，則代表文件變更後的狀態，第五行顯示具體行號及總行數(-代表舊文件+代表新文件)，後面則會列出增減的內容(-代表被刪除的內容+代表被新增的內容，其餘則無任何變更)。

git diff   比對working directory及staging area的差別
 
git diff --staged / git diff --cached   比對staging area及最後一次提交的差別
 
git diff HEAD   比對working directory及最後一次提交的差別

---
**c. git add**
 
可將文件修改添加至staging area
 
可一次添加多個文件，git add file1 file2 file3
 
添加所有文件，git add .
 
添加特定目錄，git add directory/
 
添加符合特定模式的文件，git add '*.txt'
 
交互式添加文件，git add -i

---
**d. git reset**
 
撤銷commit，repository、Staging area或working directory的變更，分為三種模式：
 
1. --soft：只移動HEAD，不改變Staging area和working directory
 
2. --mixed：預設，移動HEAD並重置staging area，不改變working directory
 
3. --hard：移動HEAD，重置staging area和working directory
 
可使用絕對或相對路徑，輸入指定HASH值，直接重置回該commit，或可使用
 
git reset HEAD^ / git reset HEAD~1 都是回到HEAD前一次commit，^可疊加或~數字可改

---
**e. git commit**
 
當檔案於staging area時，可透過git commit提交成一個新版本(commit)
 
可直接提交，開啟默認編輯器填寫commit message
 
git commit -m "commit message"，提交並附上一條提交訊息
 
git commit -a，跳過staging area直接提交，相當於git add和git commit的結合
 
git commit --amend -m "New commit message"，修改最近一次提交訊息

---
**f. git log**

檢視提交的歷史紀錄
 
顯示commit的SHA-1查核值、作者姓名、E-mail及commit message
 
git log -p，顯示每個提交之間差別的內容
 
加上-2參數，git log -p -2，限制只輸出最後兩個提交
 
git log -n 3，顯示最近的三次提交
 
git log --oneline，每個提交顯示為單行，包含HASH值及commit message
 
git log --graph，圖形方式顯示提交歷史
 
git log --author="Name"，顯示特定作者的提交
 
git log --grep="pattern"，顯示含有特定pattern的提交
 
git log File.txt，查看"File.txt"的提交歷史
 
git log --stat，顯示每個提交的變更摘要，包含新增和刪除的行數
 
功能可疊加，例：git log --oneline --graph

---
**g. git branch**

在git中建立分支、管理分支，用以處理新功能、bug修補而不影響主程式
 
git branch，列出所有分支
 
git branch NewBranch，建立名為NewBranch的新分支
 
git branch -d NewBranch，刪除名為NewBranch的分支
 
若該分之尚未合併，使用git branch -D NewBranch強制刪除
 
git branch -m New-Branch，重新命名當前分支為New-Branch
 
git checkout main，切換分支至main
 
git checkout -b NewBranch，建立並切換至NewBranch分支
 
git branch --merged，列出已合併至當前分支的分支
 
git branch --no-merged，列出尚未合併至當前分支的分支
 
---
**h. git merge**
 
合併分支，將兩個分支的工作成果結合在一起
 
git merge myBranch，將myBranch分支的變更合併到當前所在分支
 
若當前位置(HEAD)是某個分支上的root commit，在沒有任何新的commit情形下，要被merge回來時
 
會自動觸發fast-forward，此舉不會建立新的merge commit message等同於git merge --ff-only myBranch
 
git merge --no-ff myBranch，強制進行新的合併提交，可保留merge commit message
 
git merge origin/Branch，遠端分支合併至當前分支
 
git merge --abort，放棄當前合併操作，回復到合併前的狀態
 
---
**i. git push[repo_name][branch_name]**
 
將本地提交推送上游(遠端儲存庫)，將本地分支的最新修改同步遠端
 
git push，推送當前分支到預設遠端分支(通常是main)
 
git push origin myBranch，將本地的myBranch分支推送至遠端origin伺服器的同名分支
 
git push --all origin，推送所有本地分支到遠端儲存庫
 
git push origin --delete myBranch / git push origin :myBranch，刪除遠端指定分支
 
---
**j. git remote**
 
管理遠端儲存庫，查看、添加、刪除及修改遠端儲存庫
 
git remote，顯示所有已設置的遠端儲存庫名稱
 
git remote -v，顯示所有遠端儲存庫的名稱及對應的URL
 
git remote add origin <URL>，添加一個名為origin的遠端儲存庫
 
git rm origin，刪除名為origin的遠端儲存庫
 
git remote rename origin upstream，將名為origin的遠端儲存庫改名為upstream
 
git remote get-url origin，顯示名為origin遠端儲存庫的URL
 
git remote set-url origin <new-URL>，將名為origin遠端儲存庫的URL改為new-URL

---
**k. fork**
 
從Git儲存庫取得完整副本，當fork一個項目，會複製該項目的所有內容到自己的GitHub帳戶中的新儲存庫，保留原始項目所有的提交歷史和分支，且可自由對此儲存庫進行修改、提交、添加分支等動作，而不影響原始項目或其他人的分支

後續可使用pull request進行合作流程，以交付提案與原作者，原作者可決定是否採用此變更

---
**l. git rebase**
 
rebase目的也是合併兩個分支，核心概念是改寫commit歷史，把兩個分支前後相接，重新定義分支的參考基準，因rebase指令等於是修改歷史，不應隨便對已推出給別人的內容進行rebase，可能造成其他人的提交丟失或混亂
 
git rebase main，在當前分支將該分支提交應用至main分支
 
---
**m. git cherry-pick**
 
選擇性將一個或多個commit複製提交應用到當前分支，無需將整個分支進行合併
 
挑選其他分支做得不錯的commit
 
git cherry-pick <commit-hash> 挑選提交至當前分支

---
**n. git reflog**
 
查看該分支下的歷史紀錄，只要移動HEAD、分支改變就會被git記錄下來，最上面的是最新的一筆，可以幫助找回已丟失的提交或分支
 
使用git reflog可以取消rebase，雖然rebase合併分支，但其實在git中並沒有馬上被刪除，使用git reflog可找出rebase前的commit，使用git reset <commit-hash> --hard，可強制切回去
 
---
**o. git tag**
 
管理標籤，用於標記重要的提交，例如版本發佈，靜態，不像分支會隨commit移動
 
git tag，列出所有已存在的標籤
 
標籤有兩種：輕量標籤(lightweight tag)、有附註標籤(annotated tag)

 lightweight tag

git tag <tag_name>，建立輕量標籤至當前commit
 
git tag <tag_name> <commit-hash>，建立輕量標籤至指定commit
 
annotated tag
 
git tag -a <tag_name> -m "<message>"，建立帶有附註的標籤至當前commit
 
git tag -a <tag_name> <commit-hash> -m "<message>"，建立帶附註的標籤至指定commit
 
git tag -d <tag_name>，刪除標籤
 
git push origin <tag_name>，推送標籤到遠端儲存庫
 
git push origin --delete <tag_name>，刪除遠端標籤
 
---
## 3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
---
Step1
 
在GitHub右上角(+)建立New repository，並為此New repository命名
 
選擇Public(公開免費)，若是公司需要或個人需求使用Private需額外付費
 
建立一個README，說明文件，讓第一次接觸的人也能了解該軟體或使用的注意事項
 
添加LICENSE，一般使用MIT License即可，代表檔案可供別人使用於任何用途，甚至修改
 
建立完成即可進入遠端儲存庫
 
---
Step2
 
建立Remote，讓本地儲存庫能推送資料、變更至遠端除存庫
 
可直接建立資料夾進行同步，或直接打開終端機輸入mkdir FileName建立資料夾
 
建立完成後要將此資料夾與剛建立好的Repo建立Remote
 
git remote add origin <repo-url>，伺服器名字可自由命名，通常預設可使用origin，後面放上Repository的URL
 
---
Step3
 
要能使做好的commit執行git push(本地推送至遠端儲存庫)需以「個人權杖」(Personal Access Token)作為驗證工具
 
至GitHub右上角個人功能頁選單進入Settings，左邊標籤選擇最底下「Developer settings」，選擇「Peronal access tokens」，新增一個新的token，可選擇要不要對此token進行描述(Note)，選擇Expiration一般選30 days，因要做push至Repository，將repo欄位全選打勾，按下「Generate token」，會出現權杖密碼(此密碼要收藏好，後續點進不會再顯示)
 
回到終端機，指令git push -u origin main，後續可推送至GitHub更新，此時系統會要求登入GitHub，輸入使用者名稱及剛得到的權杖密碼即可完成驗證
 
---
Step4
 
接著就可以在自己的本地儲存庫(資料夾)，進行檔案建立、讀取、改動，以建立一個README.md作為範例，使用vim README.md，若資料夾無此檔案，會建立一個README.md，可進行編輯，若已有該檔案會打開此檔，可按i進行編輯，編輯完成按esc，會跳出編輯模式，鍵入:wq(儲存後關閉)，此時檔案已被改動，此時檔案在工作目錄(working directory)，需先將檔案放置暫存區(staging area)，才能進行commit放至除存庫(repository)

---
Step5
 
將目前working directory的檔案放入staging area，使用git add README.md，或git add .(add全數改動)，使用git commit儲存此改動至本地repo，會跳出預設編輯器，需鍵入commit message，也可使用git commit -m "commit message"，直接鍵入commit訊息，此時檔案在本地Repository
 
---
Step6
 
將目前本地Repository推送至遠端Repository，使用git push，系統會進行同步，如此，回到GitHub打開遠端Repository，即可看到改動已更新

*/
//: [Next Part2 : Basic](@next)
