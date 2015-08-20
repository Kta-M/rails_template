#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Gem
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------------------------------------------------------------------------------
# データ管理

# 論理削除
gem 'paranoia', '~> 2.0'
gem 'paranoia_uniqueness_validator'

# 定数管理
gem 'settingslogic'

#------------------------------------------------------------------------------
# UI

# bootstrap
gem 'bootstrap-sass'

# 日付入力UI
gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'

# ページネーション
gem 'kaminari'

# セレクトボックスのインクリメンタルサーチ
gem 'select2-rails'

# フォーム要素を動的に追加したり削除したり
gem 'nested_form'

#------------------------------------------------------------------------------
# 運用

# エクセプションメール
gem 'exception_notification'

# seedデータ
gem 'seed-fu'

#------------------------------------------------------------------------------
# 開発補助

gem_group :development do
  # schema書き出し
  gem 'annotate', '~> 2.6.6'
end

#------------------------------------------------------------------------------
# デプロイ

gem_group :development do
  # capistrano
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'slackistrano', require: false
end

#------------------------------------------------------------------------------
# テスト

gem_group :development, :test do
  # rspec
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'guard-rspec'
  gem 'factory_girl_rails'

  # カバレッジ
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
end

#------------------------------------------------------------------------------
# デバッグ

gem_group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'

  # consoleでのモデルの出力結果を整形
  gem 'hirb'
  gem 'hirb-unicode'

  # エラー画面整形
  gem 'better_errors'
  gem 'binding_of_caller'

  # spring
  gem 'spring'

  # アセット関連のログを出さない
  gem 'quiet_assets'

  # メソッドチェーンの途中の値を出力
  gem 'tapp'

  # パーシャルのパス情報をHTMLコメントとして出力
  gem 'view_source_map'

  # pryでのオブジェクト表示を整形
  gem 'awesome_print'
end

#------------------------------------------------------------------------------
# buldle install
run 'bundle install --path vendor/bundle --jobs=4'


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Git
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# bundle install後にgitにコミット
after_bundle do
  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end
