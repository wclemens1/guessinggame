function count_files {
	local num_files=$(ls | wc -w)
	echo $num_files
}

num_files=$(count_files)
echo "How many files are in the current directory?"
answer_correct=0

while [[ $answer_correct -eq 0 ]]
do

	let input_flag=0
	while [[ $input_flag -eq 0 ]]
	do
		echo "Enter a positive interger"
		read response
		if [[ -n ${response//[0-9]/} ]]
		then
			echo "That's not right!"
			echo
		else
			let input_flag=1
			input=$response
		fi
	done

	if [[ $input -eq $num_files ]]
	then
		echo "Well Done! You got it right!"
		let answer_correct=1
	elif [[ $input -lt $num_files ]]
	then
		echo "Oh no! Too low!"
		echo
	elif [[ $input -gt $num_files ]]
	then
		echo "Oh no! Too high!"
		echo
	else
		echo "Something has gone wrong"
	fi
done
