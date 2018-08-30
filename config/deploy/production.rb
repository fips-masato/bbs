# conohaのサーバーのIP、ログインするユーザー名、サーバーの役割
# xxxの部分はサーバーのIPアドレス
# 10022はポートを変更している場合。通常は22
server '153.126.137.192', user: 'fipsmasato', roles: %w{app db web}, port: 10022
