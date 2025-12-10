# build.R ーーーーーーーーーーーーーーーーーー

# 1. bookdown をレンダリング
bookdown::render_book("index.Rmd")

# 2. sitemap を生成
source("build_sitemap.R")