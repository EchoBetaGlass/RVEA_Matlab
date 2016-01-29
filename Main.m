%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  The source code of the reference vector guided evolutionary algorithm (RVEA)
%%
%%  See the details of RVEA in the following paper:
%%
%%  R. Cheng, Y. Jin, M. Olhofer and B. Sendhoff, 
%%  A Reference Vector Guided Evolutionary Algorithm for Many-objective Optimization,
%%  IEEE Transactions on Evolutionary Computation, 2016
%%
%%  The source code of RVEA is implemented by Ran Cheng 
%%
%%  If you have any questions about the code, please contact: 
%%  
%%  Ran Cheng at ranchengcn@gmail.com
%%  Prof. Yaochu Jin at yaochu.jin@surrey.ac.uk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Main()
clc;format short;addpath public;

RunNum = 1;

%Problems = {'DTLZ1','DTLZ2','DTLZ3','DTLZ4'};
%Problems = {'SDTLZ1','SDTLZ2','SDTLZ3','SDTLZ4'};
Problems = {'DTLZ2'};

for Prob = 1:length(Problems)
    for Objectives = {3}
        for Run = 1:RunNum
            Algorithm = {'RVEA'};
            Problem = Problems{Prob};
            Start(Algorithm,Problem,cell2mat(Objectives), Run);
        end;
    end;
end;
end