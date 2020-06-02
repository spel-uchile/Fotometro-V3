clear();
clc;

%alpha = 0.1:0.1:2;
t_380 = 0.01:0.001:3;
t_440 = 0.01:0.001:3;
err = 0.01;

lambda_380 = 440;
lambda_440 = 870;
lambda_408 = 408;
distro = -0.04:0.001:0.04;


for i = 1:1:length(t_380)
    for j = 1:1:length(t_440)
        %Estimación del coeficiente de Amgstrom
        alpha(i,j) = -log(t_380(i)/t_440(j))/log(lambda_380/lambda_440);
        
        alpha_err(i,j) =abs(-(1/log(lambda_380/lambda_440))*sqrt((err/t_380(i)).^2+(err/t_440(j)).^2)); 
        k(i,j) = abs((lambda_408/lambda_440).^-alpha(i,j)*log(lambda_408/lambda_440)*alpha_err(i,j));
        %Error el AOD estimado
        stm_err(i,j)= abs(t_440(j)*(lambda_408/lambda_440).^-alpha(i,j))*sqrt((err/t_440(j)).^2+(k(i,j)/((lambda_408/lambda_440).^-alpha(i,j))).^2);
    end
end

%surf(t_440,t_380,alpha)

