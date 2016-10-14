%% Problem 2.83 - Simulation
% Author: Taylor Bodin
% Date: 14 October 2016

%% Setup
clear; close all; clc;

trials = 1000000;


sim_2_dice = zeros(2,trials);
sim_3_dice = zeros(2,trials);

%% Run the Simulation

for l = 1:trials % I really tried to vectorize this :(
sim_2_dice(:,l) = problem_2_83(2);
sim_3_dice(:,l) = problem_2_83(3);
end

%% Calculate Probability

p_2_dice_2_win = sum(sim_2_dice == 2,2)/trials;
p_2_dice_1_win = sum(sim_2_dice == 1,2)/trials;
p_2_dice_0_win = sum(sim_2_dice == 0,2)/trials;

p_3_dice_2_win = sum(sim_3_dice == 2,2)/trials;
p_3_dice_1_win = sum(sim_3_dice == 1,2)/trials;
p_3_dice_0_win = sum(sim_3_dice == 0,2)/trials;

%% Make Tables
column_names = {'P_wins_0','P_wins_1','P_wins_2'};
row_names = {'Offense';'Defense'};


p_2_table = table(p_2_dice_0_win,p_2_dice_1_win,p_2_dice_2_win);
p_3_table = table(p_3_dice_0_win,p_3_dice_1_win,p_3_dice_2_win);

p_2_table.Properties.RowNames = row_names;
p_2_table.Properties.VariableNames = column_names;

p_3_table.Properties.RowNames = row_names;
p_3_table.Properties.VariableNames = column_names;