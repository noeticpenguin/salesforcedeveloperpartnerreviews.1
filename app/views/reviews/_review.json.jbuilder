json.extract! review, :id, :user_id, :partner_id, :title, :body, :engaged_as_app_exchange_partner, :created_at, :updated_at
json.url review_url(review, format: :json)