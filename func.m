if(N(i)-x>=test(j))
    x = x+test(j);
    ut = ut+1;
    ut_cf = x*s(j);
    if(sharepool<=test(j))
       share_exhaust_status = 1;
       ut_cf = x*sharepool;
       cashpool = cashpool+ut_cf;
       sharepool = 0;
       reinitiate
    end
    if(share_exhaust_status==0)
       sharepool = sharepool-s(j);
       cashpool = cashpool+ut_cf;
       func
    end
end

if(x-N(i)>=test(j))
    x = x-test(j);
    dt = dt+1;
    dt_cf = x*s(j);
    if(cashpool<=dt_cf)
       cashpool_exhaust_status = 1;
       sharepool = sharepool+floor(cashpool/N(i));
       dt_cf = N(i)*floor(cashpool/N(i));
       cashpool = cashpool-dt_cf;
       reinitiate
    end
    if(cashpool_exhaust_status==0)
       sharepool = sharepool+s(j);
       cashpool = cashpool-dt_cf;
       func
    end
end