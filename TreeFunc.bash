#!/bin/bash
export LANG=en_US.UTF-8
if [[ $@ == "" ]]; then
		echo .
	else
		echo $@
	fi
p=0
t=0
main_dir() {
	local b i b_1
	b=( $(ls $@) )
	b_1=( $(ls -p $@) )
	if [[ $@ == "" ]]; then
		cd .
	else
		cd $@
	fi
	for ((i=0; i<${#b[@]}; i++))
	do
		t=$((t+1))
		if (( i+1 != ${#b[@]} )); then 
			echo "$a""├── "${b[i]}""
		else 
			echo "$a""└── "${b[i]}""
		fi
		if [[ ${b_1[i]} == *"/"* ]]; then
			p=$((p+1))
			n=$((n+1))
			if (( i+1 == ${#b[@]} )); then
				a=$a"    "
			else
				a="$a│   "
			fi
			main_dir ${b[i]} 
			cd ..
			unset a
			n=$((n-1))
			for ((k=0; k<n; k++))
			do
				a="$a│   "
			done 
		fi
	done
	}
main_dir $@
echo ""
t=$((t-p))
if ((p==1)); then
	p="$p directory"
else
	p="$p directories"
fi
if (( t == 1 )); then
	t="1 file"
else
	t="$t files"
fi
echo "$p", "$t" 