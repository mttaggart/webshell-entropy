# Webshell Entropy

This repository contains research on using file entropy for detection of obfuscated webshells dropped into common web roots.

## Included Notebooks

The findings are available for your review in the following Jupyter Notebooks:

1. [CMS-EDA.ipynb](CMS-EDA.ipynb): Exploratory analysis of CMS entropy
2. [Webshell-EDA.ipynb](Webshell-EDA.ipynb): Exploratory analysis of obfuscated webshell entropy
3. [Webshell-Predictions.ipynb](Webshell-Predictions.ipynb): Using machine learning to predict malicious content

## Core Assumptions

This study is limited to obfuscated web shells due to the initial conceit that a web application would be protected by some form of web application firewall that would prevent unobfuscated content from getting onto the system. Future studies may involve more broad analysis, but I'm just getting started.

## Usage

This repo uses [Poetry](https://python-poetry.org) for dependency management. Make sure it's installed first! Then:

```shell
poetry install
poetry run jupyter lab
```

This will launch a Jupyter Lab instance on your machine, from which you can access and review the findings in the Notebooks. The Notebooks also invoke `setup.sh` and `calculate-entropy.sh` to reproduce the findings yourself.
