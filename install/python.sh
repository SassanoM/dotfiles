echo "Installing virtualenv"

pip2 install --upgrade pip
pip2 install --upgrade setuptools

apps=(
  virtualenv
  virtualenvwrapper
  jupyter
  numpy
  scipy
  matplotlib
  ipython
  jupyter
  pandas
  sympy
  nose
)
pip2 install "${apps[@]}"
