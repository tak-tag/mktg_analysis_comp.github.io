# build_sitemap.R みたいなファイルにしておく

base_url <- "https://tak-tag.github.io/mktg_analysis_comp.github.io"

html_files <- list.files("docs", pattern = "\\.html$", recursive = TRUE)

urls <- paste0(
  "<url>\n  <loc>", 
  file.path(base_url, html_files), 
  "</loc>\n</url>"
)

sitemap <- paste0(
  '<?xml version="1.0" encoding="UTF-8"?>\n',
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n\n',
  paste(urls, collapse = "\n"),
  "\n\n</urlset>\n"
)

writeLines(sitemap, "docs/sitemap.xml")