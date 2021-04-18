#!/bin/bash

##############################

#SBATCH --partition=gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=2
#SBATCH --time=4:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=rl
#SBATCH --output=./slurm_out/%j.out

##############################

# ['skiing', 'riverraid', 'asterix', 'zaxxon', 'adventure', 
# 'tutankham', 'seaquest', 'breakout', 'demon_attack', 'space_invaders', 
# 'frostbite', 'ice_hockey', 'private_eye', 'carnival', 'phoenix', 
# 'jamesbond', 'robotank', 'tennis', 'atlantis', 'krull', 'kangaroo', 
# 'yars_revenge', 'battle_zone', 'pong', 'montezuma_revenge', 'bank_heist', 
# 'venture', 'beam_rider', 'elevator_action', 'pitfall', 'road_runner', 
# 'gravitar', 'video_pinball', 'journey_escape', 'bowling', 'boxing',
# 'double_dunk', 'chopper_command', 'air_raid', 'hero', 'berzerk', 
# 'name_this_game', 'pooyan', 'kaboom', 'kung_fu_master', 'up_n_down', 
# 'amidar', 'alien', 'time_pilot', 'solaris', 'freeway', 'wizard_of_wor', 
# 'star_gunner', 'gopher', 'defender', 'assault', 'qbert', 'ms_pacman', 
# 'enduro', 'crazy_climber', 'centipede', 'asteroids', 'fishing_derby']


python3 main.py --game phoenix --evaluation-interval 128
