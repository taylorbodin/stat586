function wins = problem_2_83(num_dice)

o_rolls = randi([1,6],1,num_dice);
d_rolls = randi([1,6],1,num_dice);

o_rolls = sort(o_rolls,2,'descend');
d_rolls = sort(d_rolls,2,'descend');


o_wins = 0;
d_wins = 0;


if(o_rolls(1) > d_rolls(1))
    o_wins = o_wins+1;
else
    d_wins = d_wins+1;
end

if(o_rolls(2) > d_rolls(2))
    o_wins = o_wins+1;
else
    d_wins = d_wins+1;
end

wins = [o_wins;d_wins];

return