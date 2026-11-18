all: README.md

README.md: guessinggame.sh
	@echo "# Jeu de devinette" > README.md
	@echo "" >> README.md
	@echo "Date execution de make : $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md