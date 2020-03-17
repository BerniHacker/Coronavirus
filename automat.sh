# This script allows to fetch data from a source git repository,
# running a jupyter notebook file that uses such data and
# pushing the updated file to a remote repository.

# Run the following command once in the git directory first:
# $ git config --global credential.helper store

# Going to the source git repository
cd JHU_COVID-19/COVID-19
# Pulling the source data data
git pull

# Going back to the project repository
cd /home/bernardo/Coronavirus
# Executing the notebook
/home/bernardo/.local/bin/jupyter-nbconvert \
                      --execute \
                      --to notebook Coronavirus_Finland.ipynb \
                      --output Coronavirus_Finland.ipynb

# Committing the file
git add Coronavirus_Finland.ipynb
git commit -m "daily_update"
# Pushing the notebook to the remote repository
git push origin master

