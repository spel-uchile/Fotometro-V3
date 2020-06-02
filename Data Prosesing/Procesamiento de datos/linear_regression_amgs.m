t = [0.217, 0.179, 0.128, 0.097];
lambda = [440, 500, 675, 870];
st = [0.02, 0.02, 0.01, 0.01];

stt = st./t;
N = length(t);

ln_lambda = log(lambda);

err_lt = abs(ln_lambda.*stt);
err_slnt = abs(sum(ln_lambda).*stt);

den = N*sum(ln_lambda.*2)-sum(ln_lambda).*2;

num = N^2.*(sum(err_lt.^2))+sum((err_slnt).^2);

err = sqrt(num)/den; 
