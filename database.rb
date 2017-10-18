configure :test do
  set :database, {
      adapter: 'postgresql',
      encoding: 'utf8',
      database: 'hereicodechatbot_test',
      pool: 5,
      username: 'postgres',
      host: 'postgres'
  }
end

configure :development do
  set :database, {
      adapter: 'postgresql',
      encoding: 'utf8',
      database: 'hereicodechatbot_development',
      pool: 5,
      username: 'postgres',
      host: 'postgres'
  }
end

configure :production do
  set :database, {
      adapter: 'postgresql',
      encoding: 'utf8',
      database: 'hereicodechatbot_production',
      pool: 5,
      username: 'postgres',
      host: 'postgres'
  }
end