%fminunc
%metodo quasi-Newton 


%   Visualizando os resultados obtidos em cada iteraçao.
%op=optimset('Display','iter');

%   Representando graficamente os valores da funçao objetivo ao longo das iteraçoes.
%op=optimset('PlotFcns',@optimplotfval);

%   Usando como tolerancia de paragem TolX = 10^−10 e TolFun = 10^−12
%op=optimset('TolX',1e-10,'TolFun',1e-12);

%   usando a formula de atualizaçao DFP.
%op=optimset('hessupdate','dfp')

%   Usando como tolerancia de paragem 20 iteraçoes.
%op=optimset('MaxIter',20);

%   Usando como tolerancias de paragem TolX = 10^−4 e 50 como maximo de iteraçoes.
%op=optimset('TolX',1e-3,'MaxIter',50);

%   Usando como tolerancias de paragem TolFun = 10^-5, 
%   50 como maximo de iteraçoes e a formula de atualizaçao DFP
%op=optimset('TolFun',1e-5,'MaxIter',50,'HessUpdate','DFP');


%caso seja sem opções remover o 'op'
%alterar o ponto inicial
[x,fval,exitflag,output]=fminunc(@QN,[1,0],op)
function [ f ] = QN( x )
%alterar a função
f=x(1)^2+x(2)^2-x(1)*x(2);
end