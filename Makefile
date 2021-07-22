.PHONY: deploy

deploy:
	git pull
	npm install
	npm run build
	rm -rf ./www
	cp -R build ./www

convert-donors-csv:
	npx gulp convertToJson
