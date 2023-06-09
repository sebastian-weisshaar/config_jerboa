apt update -y
apt install gh screen neovim nvtop -y
gh auth login --with-token
gh repo clone jina-ai/jerboa
pip install -U poetry
cd jerboa
pwd
poetry config virtualenvs.create false \
     && poetry install --no-interaction --no-ansi

poetry run pip install torch
