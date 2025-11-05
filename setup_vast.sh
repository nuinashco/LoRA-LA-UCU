# git
# git clone https://nuinashco:$GITHUB_TOKEN@github.com/nuinashco/LoRA-LA-UCU.git; cd LoRA-LA-UCU; source setup_vast.sh

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/root/.local/bin:$PATH"
poetry config virtualenvs.in-project true
poetry install

# login
huggingface-cli login --token $HUGGINGFACE_TOKEN
wandb login