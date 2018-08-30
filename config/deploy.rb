# capistranoのバージョン固定
lock "~> 3.11.0"
set :application, 'bbs'
set :repo_url, 'https://github.com/fips-masato/bbs.git'
set :deploy_to, '/var/www/html/newhosuappli/app/bbs'
set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')

# シンボリックリンクをはるフォルダ
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
# 保持するバージョンの個数(※後述)
set :keep_releases, 5

# rubyのバージョン
# rbenvで設定したサーバー側のrubyのバージョン
set :rbenv_ruby, '2.3.3'

# デプロイのタスク
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'puma:restart'
  end

