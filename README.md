# dotfiles

# Install

On a  fresh installation of macOS:

sudo softwareupdate -i -a

xcode-select --install

# Clone with Git

git clone https://github.com/sassanom/dotfiles.git ~/.dotfiles

source ~/.dotfiles/install.sh

# Setup iTerm2 preference

load pref file from the iterm folder

# Run Jupyter Notebook inside a virtual env

http://help.pythonanywhere.com/pages/IPythonNotebookVirtualenvs

Install the ipython kernel module into your virtualenv

workon my-virtualenv-name  # activate your virtualenv, if you haven't already
pip install ipykernel
Now run the kernel "self-install" script:

python -m ipykernel install --user --name=my-virtualenv-name

