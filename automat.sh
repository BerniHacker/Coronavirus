# This script allows to fetch data from a source git repository,
# running a jupyter notebook file that uses such data and
# pushing the updated file to a remote repository.
# The script also updates the html version of the file.

# Run the following command once in the git directory first:
# $ git config --global credential.helper store

start_time_s=$(date +%s)

# Going to the source git repository
printf "\nPulling the source data data\n"
cd JHU_COVID-19/COVID-19
# Pulling the source data data
git pull

# Going back to the project repository
printf "\nExecuting the notebook\n"
cd ..
cd ..
# Executing the notebook
/home/bernardo/.local/bin/jupyter-nbconvert \
                      --execute \
                      --to notebook Coronavirus_Finland.ipynb \
                      --output Coronavirus_Finland.ipynb
# Updating the html version
printf "\nUpdating the html version\n"
/home/bernardo/.local/bin/jupyter-nbconvert \
                      --execute \
                      --to html Coronavirus_Finland.ipynb
                      --output Coronavirus_Finland.html

# Committing the files
printf "\nCommitting the files locally and updating the remote repository\n"
git add Coronavirus_Finland.ipynb
git add Coronavirus_Finland.html
git commit -m "daily_update"
# Pushing the notebook to the remote repository
git push origin master

end_time_s=$(date +%s) 
# Calculating the script duration
duration=$(($end_time_s - $start_time_s))
# Printing the script's duration
printf "\nScript's duration: %02d:%02d:%02d\n\n" \
$(($duration/3600)) $(($duration%3600/60)) $(($duration%60))
