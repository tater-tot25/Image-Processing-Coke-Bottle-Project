%my ground truths for the coke project
ground_truth = zeros(141,8);  %this way I only have to do the ones with defects

%1-9
ground_truth(1,:) = [0 1 0 0 0 0 0 0];
ground_truth(6,:) = [0 1 0 0 1 1 0 0];
ground_truth(7,:) = [0 0 0 1 0 0 0 0];
ground_truth(8,:) = [0 1 0 0 0 1 0 0];
ground_truth(9,:) = [1 0 0 0 0 0 0 0];
%10-19
ground_truth(10,:) = [0 1 0 0 0 1 0 0];
ground_truth(11,:) = [0 1 0 0 0 0 0 0];
ground_truth(12,:) = [0 1 0 0 1 0 0 0];
ground_truth(13,:) = [0 1 0 0 0 1 0 0];
ground_truth(18,:) = [0 0 0 0 0 0 0 1];
ground_truth(19,:) = [0 0 0 0 1 0 0 0];
%20-29
ground_truth(20,:) = [0 1 0 0 0 0 0 0];
ground_truth(23,:) = [0 1 0 0 0 1 0 0];
ground_truth(25,:) = [0 0 0 0 0 0 0 1];
ground_truth(26,:) = [0 0 1 0 0 0 0 0];
ground_truth(29,:) = [0 0 0 1 0 0 0 0];
%30-39
ground_truth(30,:) = [1 0 0 0 0 1 0 0];
ground_truth(31,:) = [0 1 0 0 1 0 0 0];
ground_truth(32,:) = [0 0 0 0 0 0 1 0];
ground_truth(34,:) = [0 0 1 0 0 0 0 0];
ground_truth(35,:) = [0 1 0 0 1 0 0 0];
ground_truth(36,:) = [0 1 0 0 0 0 0 0];
ground_truth(39,:) = [0 0 0 0 0 0 1 0];
%40-49
ground_truth(40,:) = [0 0 0 0 0 0 1 0];
ground_truth(41,:) = [0 0 0 1 0 0 0 0];
ground_truth(42,:) = [1 0 0 0 0 0 0 0];
ground_truth(44,:) = [0 0 0 0 1 0 0 0];
ground_truth(45,:) = [0 0 0 0 0 0 0 1];
ground_truth(46,:) = [0 1 1 0 0 1 0 0];
ground_truth(47,:) = [0 0 0 0 0 0 0 1];
ground_truth(48,:) = [0 1 0 0 0 1 0 0];
ground_truth(49,:) = [0 0 0 0 0 0 1 0];
%50-59
ground_truth(52,:) = [1 0 0 0 0 0 1 0];
ground_truth(53,:) = [0 0 1 0 0 0 0 0]; %Might be deformed, not sure
ground_truth(54,:) = [0 1 0 0 0 1 0 0];
ground_truth(57,:) = [0 0 0 0 0 0 1 0];
%60-69
ground_truth(61,:) = [0 0 0 0 0 0 1 0];
ground_truth(62,:) = [0 1 0 0 1 0 0 0];
ground_truth(64,:) = [0 1 0 0 0 0 0 0];
ground_truth(65,:) = [0 1 0 0 0 1 0 0];
ground_truth(67,:) = [0 0 1 0 0 0 0 0];
ground_truth(69,:) = [0 0 0 0 0 0 0 1];
%70-79
ground_truth(73,:) = [0 0 0 1 0 0 0 0];
ground_truth(74,:) = [0 0 0 1 0 0 0 0];
ground_truth(77,:) = [0 0 0 0 0 1 1 0];
ground_truth(79,:) = [1 0 0 0 0 0 0 0];
%80-89
ground_truth(81,:) = [0 0 0 1 0 0 0 0];
ground_truth(82,:) = [1 0 0 0 0 0 0 0];
ground_truth(83,:) = [0 1 0 0 0 1 0 0];
ground_truth(84,:) = [0 1 0 0 1 0 0 0];
ground_truth(86,:) = [0 1 0 0 0 1 0 0];
ground_truth(87,:) = [1 0 0 0 0 0 0 0];
ground_truth(89,:) = [0 0 0 0 0 0 0 1];
%90-99
ground_truth(90,:) = [1 0 0 0 0 0 0 0];
ground_truth(91,:) = [0 1 0 0 1 0 0 0];
ground_truth(92,:) = [1 0 0 0 0 0 0 0];
ground_truth(93,:) = [1 0 0 0 0 0 0 0];
ground_truth(94,:) = [0 1 0 0 1 0 0 0];
ground_truth(95,:) = [0 0 0 1 0 0 0 0];
ground_truth(96,:) = [0 0 1 0 0 0 0 0];
ground_truth(97,:) = [1 0 0 1 0 0 0 0];
ground_truth(98,:) = [0 0 0 1 0 0 0 0];
ground_truth(99,:) = [1 0 0 0 0 0 0 0];
%100-109
ground_truth(100,:) = [0 0 1 0 0 0 0 0];
ground_truth(101,:) = [0 1 0 0 0 0 0 0];
ground_truth(102,:) = [1 0 0 1 0 0 0 0];
ground_truth(105,:) = [0 0 0 0 0 0 0 1];
ground_truth(107,:) = [0 0 1 0 0 0 0 0];
ground_truth(108,:) = [0 0 1 0 0 0 0 0];
ground_truth(109,:) = [0 1 0 0 1 1 0 0];
%110-119
ground_truth(113,:) = [0 0 0 1 0 0 0 0];
ground_truth(114,:) = [0 0 1 0 0 0 0 0];
ground_truth(116,:) = [0 0 0 0 0 0 0 1];
ground_truth(117,:) = [1 0 0 0 0 0 0 0];
ground_truth(118,:) = [0 0 0 1 0 0 0 0];
ground_truth(119,:) = [0 0 0 0 0 0 0 1];
%120-129
ground_truth(120,:) = [0 0 0 0 0 0 0 1];
ground_truth(122,:) = [0 0 0 0 0 0 0 1];
ground_truth(123,:) = [0 1 0 1 0 0 0 0];
ground_truth(124,:) = [0 0 1 0 0 0 0 0];
ground_truth(125,:) = [0 1 0 0 0 0 0 0];
ground_truth(127,:) = [0 1 0 0 0 0 0 0];
ground_truth(129,:) = [0 0 0 0 0 0 1 0];
%130-139
ground_truth(131,:) = [0 1 0 0 0 0 0 0];
ground_truth(133,:) = [0 0 0 0 0 0 0 1];
ground_truth(136,:) = [1 0 0 0 0 0 1 0];
ground_truth(137,:) = [0 0 0 0 0 0 1 0];
ground_truth(138,:) = [0 1 0 0 0 0 0 0];
ground_truth(139,:) = [0 1 0 0 0 1 0 0];
%140-141
ground_truth(140,:) = [0 1 0 0 1 0 0 0];

