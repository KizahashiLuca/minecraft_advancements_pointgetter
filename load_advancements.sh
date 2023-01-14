#!/bin/bash

## file comment
function filecomment() {
  cat <<EOF > $1
########################################
## Minecraft Advancements Point Getter
## MC-Version: Java Edit. 1.19.3
## Author    : @KizahashiLuca
## Date      : 06 Jan 2023
## Version   : β-1.0
## Licensed under CC BY-SA 4.0. 
########################################

EOF
}

## team text list
team_text=(
  "\"text\":\"赤チーム\",\"color\":\"red\""
  "\"text\":\"青チーム\",\"color\":\"blue\""
  "\"text\":\"黄チーム\",\"color\":\"yellow\""
  "\"text\":\"緑チーム\",\"color\":\"green\""
  "\"text\":\"紫チーム\",\"color\":\"dark_purple\""
);

## objectives list
declare -a objectives=()
## stem list
declare -a stems=()
## title list
declare -a titles=()
## description list
declare -a descriptions=()
## frame list
declare -a frames=()
## json list
declare -a jsons=()

## detect installed
if ! type "jq" > /dev/null 2>&1 ; then
  echo;
  echo "[ERROR] Command 'jq' not found, but can be installed with:"
  echo;
  echo "sudo apt install jq"
  echo;

  exit 1
fi

## directory path
BASE_DIR=$(cd $(dirname $0); pwd)
AD_NAME=("minecraft")
GAME_DIR=${BASE_DIR}/data/map/functions/system/game/advancements/
if [ ! -e ${GAME_DIR} ]; then
  mkdir ${GAME_DIR}
fi
WAIT_DIR=${BASE_DIR}/data/map/functions/system/wait/set_advancements/
if [ ! -e ${WAIT_DIR} ]; then
  mkdir ${WAIT_DIR}
fi

## set rewards
i=1
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancements/
  cd "${AD_DIR}"
  for FILE in `find ${AD_DIR} -maxdepth 2 -type f -name *.json`; do
    ## file name
    DIR=`echo "${FILE%/*}" | sed -e "s@${AD_DIR}@@"`
    STEM=`echo "${FILE##*/}" | sed -e "s@\.json@@"`
    TMP=tmp_${DIR}_${STEM}.json
    echo ${i} ${DIR} - ${STEM}
    ## create directory
    if [ ! -e ${GAME_DIR}/${DIR} ]; then
      mkdir ${GAME_DIR}/${DIR}
    fi
    if [ ! -e ${WAIT_DIR}/${DIR} ]; then
      mkdir ${WAIT_DIR}/${DIR}
    fi
    if [ ! -e ${GAME_DIR}/${DIR}/${STEM} ]; then
      mkdir ${GAME_DIR}/${DIR}/${STEM}
    fi
    if [ ! -e ${GAME_DIR}/${DIR}/${STEM}/team ]; then
      mkdir ${GAME_DIR}/${DIR}/${STEM}/team
    fi
    ## set value
    ADV_OBJECTIVE=AD_${DIR^}_${STEM}
    TITLE=`cat "${FILE}" | jq '.display.title.translate' | sed -e "s/\"//g"`
    DESCRIPTION=`cat "${FILE}" | jq '.display.description.translate' | sed -e "s/\"//g"`
    FRAME=`cat "${FILE}" | jq '.display.frame' | sed -e "s/\"//g"`
    if [ ${FRAME} == "challenge" ]; then
      COLOR=dark_purple
    else
      COLOR=green
    fi
    cat "${FILE}" | jq ".rewards |= .+ {\"function\":\"map:system/game/advancements/${DIR}/${STEM}/main\"}" > "${TMP}"
    cat "${TMP}" > "${FILE}"
    ## detect function
    FUNC1=${GAME_DIR}/${DIR}/${STEM}/main.mcfunction
    FUNC2=${GAME_DIR}/${DIR}/${STEM}/branch.mcfunction
    FUNC3=${WAIT_DIR}/${DIR}/${STEM}.mcfunction
    ## make file - detect
    filecomment "${FUNC1}"
    cat << EOF >> ${FUNC1}
## Detect advancement
execute as @s[predicate=map:player/alive,scores={${ADV_OBJECTIVE}=0}] run function map:system/game/advancements/${DIR}/${STEM}/branch
EOF
    ## make file - branch
    filecomment "${FUNC2}"
    cat << EOF >> ${FUNC2}
## Branch team
execute if score #map_team_a ${ADV_OBJECTIVE} matches 0 as @s[predicate=map:player/team/a] run function map:system/game/advancements/${DIR}/${STEM}/team/a
execute if score #map_team_b ${ADV_OBJECTIVE} matches 0 as @s[predicate=map:player/team/b] run function map:system/game/advancements/${DIR}/${STEM}/team/b
execute if score #map_team_c ${ADV_OBJECTIVE} matches 0 as @s[predicate=map:player/team/c] run function map:system/game/advancements/${DIR}/${STEM}/team/c
execute if score #map_team_d ${ADV_OBJECTIVE} matches 0 as @s[predicate=map:player/team/d] run function map:system/game/advancements/${DIR}/${STEM}/team/d
execute if score #map_team_e ${ADV_OBJECTIVE} matches 0 as @s[predicate=map:player/team/e] run function map:system/game/advancements/${DIR}/${STEM}/team/e

## Set scoreboard
scoreboard players set @s[scores={${ADV_OBJECTIVE}=0}] ${ADV_OBJECTIVE} 1
EOF
    ## make file - team
    j=0
    for team in {A..E}; do
      text=${team_text[j]}
      FUNC4=${GAME_DIR}/${DIR}/${STEM}/team/${team,,}.mcfunction
      filecomment "${FUNC4}"
      cat << EOF >> ${FUNC4}
## Set scoreboard
scoreboard players set @a[predicate=map:player/team/${team,,}] ${ADV_OBJECTIVE} 1
scoreboard players operation #map_team_${team,,} ${ADV_OBJECTIVE} = #map ${ADV_OBJECTIVE}
scoreboard players add #map_team_${team,,} HasAdvancements 1
scoreboard players operation #map_team_${team,,} Points += #map ${ADV_OBJECTIVE}
advancement grant @a[predicate=map:player/team/${team,,}] only ${AD}:${DIR}/${STEM}
tellraw @a[predicate=map:player/team/${team,,}] ["",{"translate":"chat.type.advancement.${FRAME}","with":[{${text},"bold":true},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"${TITLE}","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"${TITLE}"},{"translate":"${DESCRIPTION}"}]}]}}]}]}]
EOF
      j=$((j+1))
    done
    ## make file - set_advancements
    filecomment "${FUNC3}"
    cat << EOF >> ${FUNC3}
## Get random value
scoreboard players set #map RandomCount 10
function map:system/common/randomizer/randomize

## Set points
scoreboard players operation #map ${ADV_OBJECTIVE} = #map RandomAnswer

## Set scoreboards
scoreboard players set #map ChooseAdvancements 1
EOF
    ## add objectives
    objectives=("${objectives[@]}" ${ADV_OBJECTIVE})
    stems=("${stems[@]}" "${DIR}/${STEM}")
    titles=("${titles[@]}" ${TITLE})
    descriptions=("${descriptions[@]}" ${DESCRIPTION})
    frames=("${frames[@]}" ${FRAME})
    ## remove tmp json
    jsons+=(${TMP})
    ## increment
    i=$((i+1))
  done
done
COUNT=$((i))

## remove jsons
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancements/
  cd "${AD_DIR}"
  for json in ${jsons[@]}; do
    if [ -e ${json} ]; then
      rm ${json}
    fi
  done
done

## Make adding objectives list
ADD_SCORE=${BASE_DIR}/data/map/functions/system/begin/set_game/add_advancements_scoreboards.mcfunction
filecomment "${ADD_SCORE}"
cat << EOF >> ${ADD_SCORE}
## Add scoreboards
#### advancements count
scoreboard objectives add AdvancementsCount dummy
scoreboard objectives add ChooseAdvancements dummy
#### each advancements
EOF
i=0
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard objectives add ${objective} dummy" >> ${ADD_SCORE}
  ## increment
  i=$((i+1))
done

## Make setting objectives list
SET_SCORE=${BASE_DIR}/data/map/functions/system/begin/set_game/set_advancements_scoreboards.mcfunction
filecomment "${SET_SCORE}"
cat << EOF >> ${SET_SCORE}
## Set scoreboards
#### advancements count
scoreboard players set #map AdvancementsCount ${COUNT}
scoreboard players set #map ChooseAdvancements 0
#### each advancements
EOF
i=0
for objective in ${objectives[@]}; do
  ## add objective
  cat << EOF >> ${SET_SCORE}
scoreboard players set @a ${objective} 0
scoreboard players set #map ${objective} 0
scoreboard players set #map_team_a ${objective} 0
scoreboard players set #map_team_b ${objective} 0
scoreboard players set #map_team_c ${objective} 0
scoreboard players set #map_team_d ${objective} 0
scoreboard players set #map_team_e ${objective} 0
EOF
  ## increment
  i=$((i+1))
done

## Make removing objectives list
REM_SCORE=${BASE_DIR}/data/map/functions/system/finish/reset_game/reset_advancements_scoreboards.mcfunction
filecomment "${REM_SCORE}"
echo "## Remove scoreboards" >> ${REM_SCORE}
i=0
for objective in ${objectives[@]}; do
  ## remove objective
  echo "scoreboard objectives remove ${objective}" >> ${REM_SCORE}
  ## increment
  i=$((i+1))
done

## Choose advancements randomly
SET_ADVS=${BASE_DIR}/data/map/functions/system/wait/set_advancements/branch.mcfunction
filecomment "${SET_ADVS}"
echo "## Choose advancements randomly" >> ${SET_ADVS}
i=0
for objective in ${objectives[@]}; do
  echo "execute if score #map RandomAnswer matches ${i} if score #map ${objective} matches 0 run function map:system/wait/set_advancements/${stems[$i]}" >> ${SET_ADVS}
  ## increment
  i=$((i+1))
done

## Send messages
SEND_MES=${BASE_DIR}/data/map/functions/system/wait/set_advancements/send_messages.mcfunction
filecomment "${SEND_MES}"
cat << EOF >> ${SEND_MES}
## Send messages
tellraw @a ["",{"text":"達成目標の進捗は以下"}]
EOF
i=0
for objective in ${objectives[@]}; do
  if [ ${frames[$i]} == "challenge" ]; then
    COLOR=dark_purple
  else
    COLOR=green
  fi
  cat << EOF >> ${SEND_MES}
execute unless score #map ${objective} matches 0 run tellraw @a ["",{"translate":" - %s : %s","with":[{"translate":"%s点","color":"white","with":[{"score":{"name":"#map","objective":"${objective}"}}]},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"${titles[$i]}","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"${titles[$i]}"},{"translate":"${descriptions[$i]}"}]}]}}]}]}]
EOF
  ## increment
  i=$((i+1))
done