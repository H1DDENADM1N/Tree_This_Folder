# Tree_This_Folder

## 为你的右键添加 ~~"tree"~~ (Dir) 功能，快速生成复制文件夹结构,便于 ChatGPT/你的同事 理解你的项目结构，使用 windows 批处理脚本实现。（生成 markdown 由 Python 实现）

## Enhance your right-click menu with a ~~'tree'~~ (Dir) command feature to quickly generate and copy the folder structure, aiding in the clear understanding of your project structure by ChatGPT/your colleagues, realized through a Windows batch script. (The function of generating markdown is implemented by Python)

---

# 经测试 md 相关功能在 win10 可能出现命令行太长无法识别，后续将尝试修复，可以暂时使用 Release 下的原始版本。

# ✨ 实现效果如图：

1. 右键菜单效果图

![右键菜单效果图](assets/复制且输出多选.png)

右键菜单效果图功能解释：

    1. 生成文件夹结构，通过子菜单选择生成 txt 、md 还是 puml 文件；

    2. 复制文件夹结构，仅复制到剪贴板，不生成文件；

    3. 生成文件夹结构，复制到剪贴板，并且生成txt或md文件，功能二选一只能其中一种，取决于 [[使用方法]]。

2. 输出 txt 效果

![输出txt效果](assets/%E8%BE%93%E5%87%BAtxt%E6%95%88%E6%9E%9C.png)

3. txt 导入 ChatGPT 效果：

![txt导入ChatGPT效果](assets/txt%E5%AF%BC%E5%85%A5ChatGPT%E6%95%88%E6%9E%9C.png)

4. 输出 markdown 效果

![输出markdown效果](assets/%E8%BE%93%E5%87%BAmarkdown%E6%95%88%E6%9E%9C.png)

5. markdown 导入 xmind 效果

![markdown 导入 xmind 效果](assets/md%E5%AF%BC%E5%85%A5xmind%E6%95%88%E6%9E%9C.png)

6. 输出 puml 效果

## ![输出puml效果](assets/输出puml效果.png)

7. puml 导入 [plantuml.com](https://www.plantuml.com) 效果

![puml 导入 plantuml.com效果](assets/puml导入plantuml.com.png)

# ➕ 使用方法：

## 演示视频：

[Tree_This_Folder 复制且输出 md 或 txt 演示视频](https://www.bilibili.com/video/BV1r5411B7FY/)

<video src="assets/%E5%A4%8D%E5%88%B6%E4%B8%94%E8%BE%93%E5%87%BAmd%E6%88%96txt.mp4" controls title="Title"></video>

---

## 1. 只需要复制到剪贴板功能

使用 🛡️**管理员权限** 运行 📁`仅复制` 文件夹下的 `add_treejustcopy.bat`即可。

## 2. 需要复制且输出 txt 功能

使用 🛡️**管理员权限** 运行 📁`复制且输出txt` 文件夹下的 `add_treetxt.bat`即可。

## 3. 需要复制且输出 md 功能

使用 🛡️**管理员权限** 运行 📁`复制且输出md` 文件夹下的 `add_treemd.bat`即可。

## 4. 需要复制且输出 txt 或 markdown 或 puml 功能

使用 🛡️**管理员权限** 运行 📁`复制且输出md或txt或puml` 文件夹下的 `add_treeMDorTXTorPUML`即可。

---

# 🗑️ 卸载与移除

## 1. 移除 复制文件夹结构

使用 🛡️**管理员权限** 运行 📁`仅复制` 文件夹 或 📁`C:\Program Files\Tree This Folder` 文件夹 下的 `remove_treejustcopy.bat`即可。

## 2. 移除 生成文件夹结构

    2.1 使用 🛡️**管理员权限** 运行 📁`复制且输出txt` 文件夹 或 📁`C:\Program Files\Tree This Folder` 文件夹 下的 `remove_treetxt.bat`即可。

    2.2 使用 🛡️**管理员权限** 运行 📁`复制且输出md` 文件夹 或 📁`C:\Program Files\Tree This Folder` 文件夹 下的 `remove_treemd.bat`即可。

## 3. 移除 生成文件夹结构 \*多选

使用 复制且输出 md 或 txt ，卸载与移除需使用 🛡️**管理员权限** 运行 📁`复制且输出md或txt` 文件夹 或 📁`C:\Program Files\Tree This Folder` 文件夹 下的 `remove_treeMDorTXTorPUML.bat`。
