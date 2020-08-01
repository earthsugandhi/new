ut_cf = 0;
dt_cf = 0;
x = N(1);
for i=1:1:b
  func
  if(share_exhaust_status==1 || cashpool_exhaust_status==1)
     break 
  end
end
sharepool_worth = sharepool*N(b);
net_worth = cashpool+sharepool_worth;
gain = net_worth-capital;
Result(j,:) = [gain,net_worth,cashpool,sharepool_worth,sharepool,ut,dt,N(i),z];