
deploy:
	@git remote remove piku || true
	@git remote add piku piku@piku.lab.tp.it:n8n
	@date > RELEASE.txt
	@git add .
	@git commit -am "Deploy"
	@git push
	@git push piku main
