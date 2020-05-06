# !/bin/bash
CONFIG[0]=".zshrc"
CONFIG[1]=".tmux.conf"

sync_settings_divider='#=====MYSETTINGS====#'
some_word='source' 
sync_settings_start=$sync_settings_divider'START' 
sync_settings_end=$sync_settings_divider'END' 

add_config(){
  if cat ~/$1 | grep -q "$sync_settings_start";
  then
    echo "previous configuration replaced"
    sed -i "/"$sync_settings_start"/,/"$sync_settings_end":/d" ~/$1
    echo $sync_settings_start >> ~/$1
    cat $1".settings" >> ~/$1
    echo $sync_settings_end >> ~/$1
  else 
    echo "configuration added"
    echo $sync_settings_start >> ~/$1
    cat $1".settings" >> ~/$1
    echo $sync_settings_end >> ~/$1
  fi
}

for s in ${CONFIG[*]}
do
  add_config ${s}
done 
