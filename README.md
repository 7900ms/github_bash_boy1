## 重命名文件夹和移动文件

### 简单版本：移动文件到某一文件夹

```
chmod 700 `find ~/.ssh -type d`

find . -maxdepth 2 -name "*.png"
find . -maxdepth 3 -name "*.png"

find . -maxdepth 3 -mindepth 3 -name "*.png"
cp `find . -maxdepth 3 -mindepth 3 -name "*.png"` ./a
(统一移动到 a文件夹)
```

即-基本的复制、移动和重命名到某一个文件夹。直接用一行命令就 OK

### 复杂版本：移动文件到自己上层的文件夹

```
find . -maxdepth 2 -mindepth 2 -type d

(即-统一移动到 各自的上层文件夹 ？ 一行命令无法解决。 )
```

此脚本旨在解决这个问题[1]。基本思路是：遍历每个文件夹，然后把里面的东西移动到各自的上层文件夹

### 此脚本的用法

```
> git clone https://github.com/7900ms/github_bash_boy1.git
> cd github_bash_boy1
观察一下 1000_ori 的目录结构 [1]
拷贝一份 1000_ori 命名为 1000
"1000 文件夹" 就是要操作的 YOUR_TOP_LEVEL_FOLDER
修改 script.sh ：填入 YOUR_TOP_LEVEL_FOLDER 的绝对路径
> cd github_bash_boy1
> bash script.sh
查看 "1000 文件夹" 新的目录结构
```

运行的理想结果应该是：形成了新的目录结构 (由 1000_ori 的目录结构 -> 1000_r 的目录结构)。具体描述见 [1]

ref
```
[1]
有 1000 个文件夹，其中 300 个文件内就是图片，另外 700 个文件夹内分别都是一个子文件夹，子文件夹内在才是图片。
现在需要: 将这 700 个文件夹内的子文件夹内的图片批量移动到上层文件夹内，同时删除掉各子文件夹。
https://www.v2ex.com/t/311912
```
