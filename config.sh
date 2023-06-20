apt update -y
apt install gh screen neovim nvtop -y
pip install -U poetry
gh auth login
gh repo clone jina-ai/jerboa
cd jerboa
pwd
poetry config virtualenvs.create false \
     && poetry install --no-interaction --no-ansi

poetry run pip install torch
wandb login
# poetry run pip install https://github.com/samsja/bitsandbytes/blob/feat-save-col-wheel/bitsandbytes-0.39.1-py3-none-any.whl\?raw\=true
screen -S training_screen
