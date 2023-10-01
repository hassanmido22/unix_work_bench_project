function validate_number
{
    [[ $1 =~ ^[0-9]+$ ]]
}
correct_answer=1
while [[ $correct_answer -eq 1 ]]
do
    echo "Can you guess how many files are in the current directory ?"
    read num_of_files 
    if validate_number $num_of_files
    then
        files_number=$(ls | wc -l) 
        if [[ $files -gt $num_of_files ]]
        then 
            echo "Wrong, Your guess was too low, Please try again."
        elif [[ $files -lt $num_of_files ]]
        then 
            echo "Wrong, Your guess was too high, Please try again."
        else
            echo "Correct Guess, Congratulations!"
            correct_answer=0
        fi
    else
        echo "Please enter a valid number."
    fi
done