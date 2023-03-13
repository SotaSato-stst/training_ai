# .envファイルのセットアップ
setup_env:
	cp .env.rails.sample .env.rails.local && cp .env.web-front.sample .env.web-front.local 

# Dockerイメージをビルド
# $ make build  # => すべてのイメージをビルド
# $ make build name=rails  # => railsイメージのみをビルド
build:
	docker-compose build ${name}

# Dockerコンテナを起動（フロント開発をしない場合）
# あらかじめビルドされた環境で立ち上がるため画面の読み込みが早い
start:
	docker-compose up -d db rails web-front prism

# Dockerコンテナを起動（フロント開発をする場合、フロントのホットリロード付き）
start_with_front_hot_reload:
	docker-compose up -d db rails web-front-dev prism

# Dockerコンテナを停止
stop:
	docker-compose stop ${name}

# Dockerコンテナを削除
down:
	docker-compose down

# 起動中のapi_serverのログを見る
attach_rails:
	docker attach training_ai_rails

# 起動中のweb_frontのログを見る
attach_web_front:
	docker attach training_ai_web-front

# 起動中のweb_front(開発)のログを見る
attach_web_front_dev:
	docker attach training_ai_web-front-dev

# 起動中のdbのコンテナに接続する
shell_db:
	docker exec -it training_ai_db /bin/bash

# 起動中のapi_serverのコンテナに接続する
shell_rails:
	docker exec -it training_ai_rails /bin/bash

# 起動中のweb_frontのコンテナに接続する
shell_web_front:
	docker exec -it training_ai_web-front /bin/bash

# 起動中のweb_front(開発)のコンテナに接続する
shell_web_front_dev:
	docker exec -it training_ai_web-front-dev /bin/bash

# --------------------------------------------------------
# ---------------------- api_server ----------------------
# --------------------------------------------------------

# データベースの作成
db_create:
	(cd api_server && make db_create)

# データベースのマイグレーション
db_migrate:
	(cd api_server && make db_migrate)

# データベースのマイグレーションリセット
db_migrate_reset:
	(cd api_server && make db_migrate_reset)

# データベースのseed作成
db_seed:
	(cd api_server && make db_seed)

# テストデータベースの作成
db_test_prepare:
	(cd api_server && make db_test_prepare)

# ER図を作成する. `api_server/tmp/erd.png` に出力される
erd:
	(cd api_server && make erd)

# rubocop実行
rubocop:
	(cd api_server && make rubocop)

# rspec実行
rspec:
	(cd api_server && make rspec)

# モデルのannotate実行
annotate:
	(cd api_server && make annotate)

# --------------------------------------------------------
# ---------------------- web_front -----------------------
# --------------------------------------------------------

# jest実行
jest:
	(cd web_front && make jest)

# ViewModelContextの生成
gen_vm:
	(cd web_front && make gen_vm)
