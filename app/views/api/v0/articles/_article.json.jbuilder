json.type_of "article"

json.extract!(
  article,
  :id,
  :title,
  :description,
  :readable_publish_date,
  :slug,
  :path,
  :url,
  :comments_count,
  :positive_reactions_count,
  :collection_id,
  :published_timestamp,
)

json.cover_image     cloud_cover_url(article.main_image)
json.social_image    article_social_image_url(article)
json.canonical_url   article.processed_canonical_url
json.created_at      formated_date(article.created_at)
json.edited_at       formated_date(article.edited_at)
json.crossposted_at  formated_date(article.crosspost)
json.published_at    formated_date(article.published)
json.last_comment_at formated_date(article.last_comment_at)
