all: learning chanting

learning:
	lualatex -interaction=nonstopmode -halt-on-error -output-directory=../charts/ patimokkha-learning-chart.tex

chanting:
	lualatex -interaction=nonstopmode -halt-on-error -output-directory=../charts/ patimokkha-chanting-chart.tex && convert -density 600 ../charts/patimokkha-chanting-chart.pdf -flatten -compress jpeg -quality 90 -filter Lanczos -resize x600 ../charts/patimokkha-chanting-chart.jpg
