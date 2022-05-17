%fminsearch
%metodo Nelder-Mead


%Visualizando os resultados obtidos em cada iteraçao.
%op=optimset('Display','iter');


%Representando graficamente os valores da fun¸c˜ao objetivo ao longo das iteraçoes.
%op=optimset('PlotFcns',@optimplotfval);


% Visualizando os resultados obtidos em cada iteraçao 
% e a representaçao grafica dos valores da funçao
% objetivo ao longo das iteraçoes
%op=optimset('Display','iter','PlotFcns',@optimplotfval);

%Usando como tolerancia de paragem TolX = 10^−10
%op=optimset('TolX',1e-10);

%Usando como tolerˆancia de paragem TolFun = 10^−12
%op=optimset('TolFun',1e-12);

%Usando como tolerancia de paragem 20 iteraçoes.
%op=optimset('MaxIter',20);

% Usando como tolerancias de paragem TolX = 10^−4, TolFun = 10^−2
% e 50 como maximo de iteraºoes.
%op=optimset('TolX',1e-3,'TolFun',1e-2,'MaxIter',50);


%se nao houver opções remover o 'op'

%alterar o ponto inicial
[x,fval,exitflag,output]=fminsearch(@NM1,[1,1])
function [ f ] = NM1( x )
% substituir pela funçao do enunciado
f=max(abs(x(1)),abs(x(2)-1));
end
