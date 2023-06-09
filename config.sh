apt update -y
apt install gh screen neovim nvtop -y
gh auth login
pip install -U poetry
gh repo clone jina-ai/jerboa
cd jerboa
pwd
poetry config virtualenvs.create false \
     && poetry install --no-interaction --no-ansi

poetry run pip install torch
