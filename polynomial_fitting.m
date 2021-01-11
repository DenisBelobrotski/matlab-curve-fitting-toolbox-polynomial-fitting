% Sixth degree polynomial fitting

load data_file;
x = x';
y = y';

% figure
% plot(x, y, '.');
% title('Input data');

% built-in sixth degree polynomial
%[population, gof] = fit(x, y, 'poly6');

% custom model (polynomial)
model = 'p_6 * x^6 + p_5 * x^5 + p_4 * x^4 + p_3 * x^3 + p_2 * x^2 + p_1 * x + p_0';
[population, gof] = fit(x, y, model);

figure
plot(population, x, y);
title('Polynomial fitting');

disp(population);
disp('Goodness of fit');
disp(gof);
