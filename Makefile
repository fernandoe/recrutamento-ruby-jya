run-rubocop:
	cd octo; rubocop

run-rails-routes:
	cd octo; rails routes

run-rails-server:
	cd octo; rails server -b 0.0.0.0

run-ngrok:
	 cd octo; ngrok http 3000

run-migrations:
	 cd octo; bin/rails db:migrate
