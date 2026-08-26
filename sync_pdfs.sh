#!/bin/bash
# 把论文/CV 的最新版本同步到网站 assets/pdf/（文件名固定，网页链接永不变）。
#
# 用法:
#   ./sync_pdfs.sh          只复制文件并显示改动（不提交）
#   ./sync_pdfs.sh --push   复制 + git 提交 + 推送上线（几分钟后生效）
#
# 各文件的本地权威来源（如来源变更，改这里的路径即可）:
#   - Poultry JMP:  ~/CFS_poultry/poultry_CFS_overleaf/main.pdf（重新编译后运行本脚本即同步）
#   - FBUI:         ~/FBUI/latex/main.pdf（同上）
#   - Corn Belt:    ~/Documents/求职/Papers_论文副本/Du_Sun_Wang_CornBelt_Adaptation.pdf（从 Overleaf 下载新版后先替换这份）
#   - CV:           ~/Documents/求职/CV/Yuhan_Wang_CV.pdf（Word 导出新 PDF 后先替换这份）
set -e
cd "$(dirname "$0")"

cp "$HOME/CFS_poultry/poultry_CFS_overleaf/main.pdf"           assets/pdf/Wang_JMP_Poultry.pdf
cp "$HOME/FBUI/latex/main.pdf"                                 assets/pdf/Wang_FarmBill_Uncertainty.pdf
cp "$HOME/Documents/求职/Papers_论文副本/Du_Sun_Wang_CornBelt_Adaptation.pdf"   assets/pdf/Wang_CornBelt_Adaptation.pdf
cp "$HOME/Documents/求职/CV/Yuhan_Wang_CV.pdf"                     assets/pdf/Yuhan_Wang_CV.pdf

echo "=== assets/pdf/ 改动状态 ==="
git status --short assets/pdf/ || true

if [ "$1" = "--push" ]; then
  git add assets/pdf/
  git commit -m "Update hosted PDFs $(date +%Y-%m-%d)" || echo "文件无变化，无需提交。"
  git push origin main
  echo "已推送，GitHub Pages 几分钟内生效。"
fi
